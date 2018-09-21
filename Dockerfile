FROM registry.cn-hangzhou.aliyuncs.com/sjroom/apline-base

ADD jdk1.8.0_181 /export/servers/jdk

ENV JAVA_HOME /export/servers/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN chmod +x ${JAVA_HOME}/bin/*

RUN echo "export JAVA_HOME=/export/servers/jdk" >> /etc/profile
RUN source /etc/profile	
