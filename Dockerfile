FROM registry.cn-shenzhen.aliyuncs.com/sjroom/apline-base

RUN apk add openjdk8-jre

RUN rm -rf /var/cache/apk/* && rm -rf /packages

# Install JDK 8  
# RUN cd /tmp && curl -L 'http://oi9kolnxs.bkt.clouddn.com/software/jdk-8u181-linux-x64.tar.gz' | tar -xz  
# RUN mv /tmp/jdk1.8.0_181 /export/servers/jdk

# ENV JAVA_HOME /export/servers/jdk
# ENV PATH ${PATH}:${JAVA_HOME}/bin
# RUN echo "export JAVA_HOME=/export/servers/jdk" >> /etc/profile
# RUN source /etc/profile