# Dockerfile

FROM debian:bookworm

RUN apt-get update && apt-get install -y build-essential git cmake ccache unzip wget
RUN rm -rf /var/lib/apt/lists/*
RUN cd /opt && wget https://dl.google.com/android/repository/android-ndk-r25c-linux.zip && unzip android-ndk-r25c-linux.zip && rm android-ndk-r25c-linux.zip
RUN cd /opt && wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.11%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.11_9.tar.gz && tar -xvf OpenJDK17U-jdk_x64_linux_hotspot_17.0.11_9.tar.gz && rm OpenJDK17U-jdk_x64_linux_hotspot_17.0.11_9.tar.gz
RUN cd /opt && wget https://cloud.tyabus.co.uk/s/Ep69bWjQW5gLScy/download/game_vpk.zip && unzip game_vpk.zip && rm game_vpk.zip
