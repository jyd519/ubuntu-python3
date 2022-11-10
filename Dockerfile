FROM ubuntu:20.04

# COPY sources.list /etc/apt/sources.list
# RUN echo 'nameserver 8.8.8.8' >> /etc/resolv.conf && cat /etc/resolv.conf \
ENV TZ=Asia/Shanghai
RUN echo $TZ | tee /etc/timezone \
     && apt-get update -y \
     && apt-get install -y software-properties-common \
     && add-apt-repository -y ppa:deadsnakes/ppa \
     && apt-get update -y \
     && DEBIAN_FRONTEND=noninteractive apt-get install -y python3.9 python3.9-dev python3-pip python3.9-distutils default-libmysqlclient-dev build-essential \
     && DEBIAN_FRONTEND=noninteractive apt-get install -y p7zip-full tzdata \
     && cd /usr/local/bin \
     && ln -s /usr/bin/python3.9 python \
     && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives

CMD ["python3.9"]
