FROM registry.cn-shenzhen.aliyuncs.com/sjroom/apline-base

# Install JDK 7  
RUN cd /tmp &&  curl -L 'http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' | tar -xz  
RUN mkdir -p /usr/lib/jvm  
RUN mv /tmp/jdk1.7.0_65/ /export/servers/ 

RUN mkdir -p /export/App && \
    mkdir -p /export/Domains && \
    mv /export/servers/jdk1.8.0_181 /export/servers/jdk
ENV JAVA_HOME /export/servers/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN echo "export JAVA_HOME=/export/servers/jdk" >> /etc/profile
RUN source /etc/profile