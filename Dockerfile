# Dockerfile

FROM debian:bookworm

RUN apt-get update && apt-get install -y build-essential git cmake ccache unzip
RUN rm -rf /var/lib/apt/lists/*
RUN cd /opt && https://dl.google.com/android/repository/android-ndk-r25c-linux.zip && unzip android-ndk-r25c-linux.zip && rm android-ndk-r25c-linux.zip
