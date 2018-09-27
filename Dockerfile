FROM registry.cn-shenzhen.aliyuncs.com/sjroom/alpine-base

# 在线安装 Install JDK 8  
# RUN cd /tmp && curl -L 'http://oi9kolnxs.bkt.clouddn.com/software/jdk-8u181-linux-x64.tar.gz' | tar -xz
# RUN mv /tmp/jdk1.8.0_181/ /export/servers/

# 本地安装
ADD jdk1.8.0_181 /export/servers/jdk
ENV JAVA_HOME /export/servers/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN chmod +x ${JAVA_HOME}/bin/*

RUN echo "export JAVA_HOME=/export/servers/jdk" >> /etc/profile
RUN source /etc/profile

#启动、停止脚本(sprintboot)
RUN echo "sh /export/App/service.sh start" >> /export/servers/script/start.sh
RUN echo "sh /export/App/service.sh stop" >> /export/servers/script/stop.sh