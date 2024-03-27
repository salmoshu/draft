#include <librealsense2/rs.hpp>
#include <map>
#include <string>
#include <mutex>
#include <thread>
#include <iostream>

int main() {
    rs2::pipeline pipe;
    rs2::config cfg;
    cfg.enable_stream(RS2_STREAM_ACCEL, RS2_FORMAT_MOTION_XYZ32F, 200);
    cfg.enable_stream(RS2_STREAM_GYRO, RS2_FORMAT_MOTION_XYZ32F, 200);

    // Output the frame counter every second, then quit after 10 seconds.
    std::map<std::string, int> counters;
    std::mutex mutex;
    std::string motion_type;

    // Our IMU callback. Just increments a frame counter.
    auto callback = [&](const rs2::frame& frame) {
        // Uncomment to see that it's really the IMU calling back.
        // std::cout << "at " << int(frame.get_timestamp() * 1000 + 0.5) << " us: "
        //           << frame.get_profile().stream_name() << " at " << frame.get_profile().fps() << " fps." << std::endl;

        std::lock_guard<std::mutex> lock(mutex);
        if(frame.get_profile().stream_type() == RS2_STREAM_GYRO)
            motion_type = "Gyro";
        else if(frame.get_profile().stream_type() == RS2_STREAM_ACCEL)
            motion_type = "Accel";
        else
            motion_type = "Others";
        counters[motion_type]++;

    };

    pipe.start(cfg, callback);

    // 获取IMU传感器
    rs2::sensor imu_sensor = pipe.get_active_profile().get_device().first<rs2::sensor>();

    int i = 0;
    while (true) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
        {
            std::lock_guard<std::mutex> lock(mutex);
            for (auto p : counters) {
                std::cout << "[" << p.first << "]: " << p.second << " frames received" << std::endl;
            }
        }

        if (i == 10) {
            pipe.stop();
            break;
        }
        ++i;
    }

    return 0;
}