FROM ubuntu:18.04

# COPY sources.list /etc/apt/sources.list
# RUN echo 'nameserver 8.8.8.8' >> /etc/resolv.conf && cat /etc/resolv.conf \
RUN  apt-get update \
     && apt-get update \
     && apt-get install -y python3.7 python3.7-dev python3-pip default-libmysqlclient-dev build-essential \
     && DEBIAN_FRONTEND=noninteractive apt-get install p7zip-full tzdata -y \
     && cd /usr/local/bin \
     && ln -s /usr/bin/python3.7 python \
     && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives

CMD [ "python3"]
