FROM ubuntu:18.10

# add aliyun kali-linux source
RUN echo "deb http://mirrors.aliyun.com/kali sana main non-free contrib" >> /etc/apt/source.list \
    && echo "deb http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free" >> /etc/apt/source.list \
    && echo "deb-src http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free" >> /etc/apt/source.list

# install hydra
RUN apt-get update && apt-get install hydra

WORKDIR /
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]