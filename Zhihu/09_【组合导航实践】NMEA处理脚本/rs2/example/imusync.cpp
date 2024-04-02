#include <librealsense2/rs.hpp>
#include <map>
#include <string>
#include <mutex>
#include <thread>
#include <iostream>

#include <deque>
#include <Eigen/Core>

typedef std::pair<rs2_stream, int> stream_index_pair;
const stream_index_pair GYRO{RS2_STREAM_GYRO, 0};
const stream_index_pair ACCEL{RS2_STREAM_ACCEL, 0};
// <gyro_data, accel_data>
struct sync_imu_data
{
    double timestamp;
    rs2_vector gyro_data;
    rs2_vector accel_data;
};

class float3
{
    public:
        float x, y, z;

    public:
        float3& operator*=(const float& factor)
        {
            x*=factor;
            y*=factor;
            z*=factor;
            return (*this);
        }
        float3& operator+=(const float3& other)
        {
            x+=other.x;
            y+=other.y;
            z+=other.z;
            return (*this);
        }
};


class CimuData
{
    public:
        CimuData() : m_time_ms(-1) {};
        CimuData(const stream_index_pair type, Eigen::Vector3d data, double time):
            m_type(type),
            m_data(data),
            m_time_ms(time){};
        bool is_set() {return m_time_ms > 0;};
    public:
        stream_index_pair m_type;
        Eigen::Vector3d   m_data;
        double            m_time_ms;
};

template <typename T> T lerp(const T &a, const T &b, const double t) {
    return a * (1.0 - t) + b * t;
}

sync_imu_data CreateUnitedMessage(const CimuData accel_data, const CimuData gyro_data)
{
    sync_imu_data imu_msg;
    // rclcpp::Time t(gyro_data.m_time_ns);  //rclcpp::Time(uint64_t nanoseconds)
    imu_msg.timestamp = gyro_data.m_time_ms;

    imu_msg.gyro_data.x = gyro_data.m_data.x();
    imu_msg.gyro_data.y = gyro_data.m_data.y();
    imu_msg.gyro_data.z = gyro_data.m_data.z();

    imu_msg.accel_data.x = accel_data.m_data.x();
    imu_msg.accel_data.y = accel_data.m_data.y();
    imu_msg.accel_data.z = accel_data.m_data.z();
    return imu_msg;
}

void FillImuData_LinearInterpolation(const CimuData imu_data, std::deque<sync_imu_data>& imu_msgs)
{
    static std::deque<CimuData> _imu_history;
    _imu_history.push_back(imu_data);
    stream_index_pair type(imu_data.m_type);
    imu_msgs.clear();

    if ((type != ACCEL) || _imu_history.size() < 3)
        return;
    
    std::deque<CimuData> gyros_data;
    CimuData accel0, accel1, crnt_imu;

    while (_imu_history.size()) 
    {
        crnt_imu = _imu_history.front();
        _imu_history.pop_front();
        if (!accel0.is_set() && crnt_imu.m_type == ACCEL) 
        {
            accel0 = crnt_imu;
        } 
        else if (accel0.is_set() && crnt_imu.m_type == ACCEL) 
        {
            accel1 = crnt_imu;
            const double dt = accel1.m_time_ms - accel0.m_time_ms;

            while (gyros_data.size())
            {
                CimuData crnt_gyro = gyros_data.front();
                gyros_data.pop_front();
                const double alpha = (crnt_gyro.m_time_ms - accel0.m_time_ms) / dt;
                CimuData crnt_accel(ACCEL, lerp(accel0.m_data, accel1.m_data, alpha), crnt_gyro.m_time_ms);
                imu_msgs.push_back(CreateUnitedMessage(crnt_accel, crnt_gyro));
            }
            accel0 = accel1;
        } 
        else if (accel0.is_set() && crnt_imu.m_time_ms >= accel0.m_time_ms && crnt_imu.m_type == GYRO)
        {
            gyros_data.push_back(crnt_imu);
        }
    }
    _imu_history.push_back(crnt_imu);
    return;
}


int main() {
    rs2::pipeline pipe;
    rs2::config cfg;
    cfg.enable_stream(RS2_STREAM_ACCEL, RS2_FORMAT_MOTION_XYZ32F, 200);
    cfg.enable_stream(RS2_STREAM_GYRO, RS2_FORMAT_MOTION_XYZ32F, 200);

    // Output the frame counter every second, then quit after 10 seconds.
    int counters = 0;
    std::mutex mutex;
    std::string motion_type;

    auto callback = [&](rs2::frame frame)
    {
        auto stream = frame.get_profile().stream_type();
        auto stream_index = (stream == GYRO.first)?GYRO:ACCEL;
        double frame_time = frame.get_timestamp();

        auto crnt_reading = *(reinterpret_cast<const float3*>(frame.get_data()));
        Eigen::Vector3d v(crnt_reading.x, crnt_reading.y, crnt_reading.z);
        CimuData imu_data(stream_index, v, frame.get_timestamp());
        std::deque<sync_imu_data> imu_msgs;

        if(stream == ACCEL.first) {
            std::cout << "ACCE1: " << crnt_reading.x << "\n";
        }
        if(stream == GYRO.first) {
            std::cout << "GYRO1: " << crnt_reading.x << "\n";
        }

        FillImuData_LinearInterpolation(imu_data, imu_msgs);

        while (imu_msgs.size())
        {
            sync_imu_data imu_msg = imu_msgs.front();
            // process imu_msg here...
            std::cout << "ACCE2: " << imu_msg.accel_data.x << "\n";
            std::cout << "GYRO2: " << imu_msg.gyro_data.x << "\n";

            counters++;

            imu_msgs.pop_front();
        }
    };

    pipe.start(cfg, callback);

    while (true) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
        if(counters > 50) {
            pipe.stop();
            break;
        }
    }

    return 0;
}