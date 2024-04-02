#include <minmea/minmea.h>
#include <rtklib/rtklib.h>
#include <yaml-cpp/yaml.h>

#include <iostream>
#include <fstream>
#include <string>

void minmea_process(minmea_sentence_rmc *frame_rmc, minmea_sentence_gga *frame_gga, char *line);
double epoch2gpst(minmea_date date, minmea_time time);

int main(int argc, char *argv[])
{
    // 加载配置文件
    // load configuration file
    YAML::Node config;
    try {
        config = YAML::LoadFile(argv[1]);
    } catch (YAML::Exception &exception) {
        std::cout << "Failed to read configuration file. Please check the path and format of the configuration file!"
                  << std::endl;
        return -1;
    }
    
    // 读取文件路径配置
    // load filepath configuration
    std::string abspath, gnsspath, outputpath;
    try {
        abspath    = config["abspath"].as<std::string>();
        gnsspath   = abspath + config["gnsspath"].as<std::string>();
        
        outputpath = abspath + config["outputpath"].as<std::string>();
        
    } catch (YAML::Exception &exception) {
        std::cout << "Failed when loading configuration. Please check the file path and output path!" << std::endl;
        return -1;
    }

    // 读取GNSS噪声参数
    // load GNSS noise parameters
    double nstd, estd, hstd;
    try {
        nstd = config["gnssnoise"]["nstd"].as<double>();
        estd = config["gnssnoise"]["estd"].as<double>();
        hstd = config["gnssnoise"]["hstd"].as<double>();
    } catch (YAML::Exception &exception) {
        std::cout << "Failed when loading configuration. Please check IMU noise!" << std::endl;
        return false;
    }

	std::ifstream inFile(gnsspath, std::ios::in);
	std::ofstream outFile(outputpath, std::ios::out);
	std::string line;

    std::cout << "gnsspath: " << gnsspath << "\n";
    std::cout << "outputpath: " << outputpath << "\n";

    struct minmea_sentence_rmc frame_rmc = {0};
    struct minmea_sentence_gga frame_gga = {0};

	while (std::getline(inFile, line))
	{
        // frame_rmc = {0};
        frame_gga = {0};
        minmea_process(&frame_rmc, &frame_gga, (char*)line.data());
        if(frame_rmc.date.year && frame_gga.latitude.value && frame_gga.longitude.value) {
            outFile << epoch2gpst(frame_rmc.date, frame_gga.time) << " ";
            // outFile << "20" << frame_rmc.date.year << "-" <<
            //            frame_rmc.date.month << "-" <<
            //            frame_rmc.date.day << " " <<
            //            frame_gga.time.hours << ":" <<
            //            frame_gga.time.minutes << ":" <<
            //            frame_gga.time.seconds << "." <<
            //            (double)frame_gga.time.microseconds/1000 << " ";
            outFile << frame_gga.latitude.value << " ";
            outFile << frame_gga.longitude.value << " ";
            outFile << frame_gga.altitude.value << " ";
            outFile << nstd << " ";
            outFile << estd << " ";
            outFile << hstd << " ";
            outFile << "\n";
        }
	}

	inFile.close();
	outFile.close();
	return 0;
}

void minmea_process(minmea_sentence_rmc *frame_rmc, minmea_sentence_gga *frame_gga, char *line) {
    switch(minmea_sentence_id(line, false)) {
        case MINMEA_SENTENCE_RMC:
            minmea_parse_rmc(frame_rmc, line);
        break;
        case MINMEA_SENTENCE_GGA:
            minmea_parse_gga(frame_gga, line);
        break;
    }
}

double epoch2gpst(minmea_date date, minmea_time time) {
    double ep[] = {(double)date.year+2000.0,
                   (double)date.month,
                   (double)date.day,
                   (double)time.hours,
                   (double)time.minutes,
                   (double)time.seconds+(double)time.microseconds/1000};
    int week;
    double tow = time2gpst(epoch2time(ep), &week);
    return tow;
}