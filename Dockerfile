FROM victorhcm/opencv
SHELL ["/bin/bash","-c"]  

# install packages
RUN apt-get update && apt-get install -q -y \
    vim \
    nano \
    tmux \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /root/feature_detection

WORKDIR /root/feature_detection

RUN mkdir build

COPY feature_extraction.cpp .

COPY CMakeLists.txt .

CMD ["bash"]