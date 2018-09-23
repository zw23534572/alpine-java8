FROM registry.cn-shenzhen.aliyuncs.com/sjroom/apline-base

# Install JDK 8  
RUN cd /tmp && curl -L 'http://oi9kolnxs.bkt.clouddn.com/software/jdk-8u181-linux-x64.tar.gz' | tar -xz  
RUN mv /tmp/jdk1.8.0_181/ /export/servers/

RUN mkdir -p /export/App && \
    mkdir -p /export/Domains && \
    mv /export/servers/jdk1.8.0_181 /export/servers/jdk

# Set Oracle JDK 8 as default Java  
RUN update-alternatives --install /usr/bin/java java /export/servers/jdk/bin/java 300     
RUN update-alternatives --install /usr/bin/javac javac /export/servers/jdk/bin/javac 300 

ENV JAVA_HOME /export/servers/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
RUN echo "export JAVA_HOME=/export/servers/jdk" >> /etc/profile
RUN source /etc/profile