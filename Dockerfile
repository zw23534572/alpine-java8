FROM registry.cn-shenzhen.aliyuncs.com/sjroom/apline-base

# 使用open jre
RUN apk add openjdk8-jre

# 使用oracle jdk8
# ENV JAVA_VERSION_MAJOR=8 \
#     JAVA_VERSION_MINOR=172 \
#     JAVA_VERSION_BUILD=02 \
#     JAVA_PACKAGE=server-jre

# RUN curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
# "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" | gunzip -c - | tar -xf - && \
#     mv jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/jre /export/service/jre && \
#     rm /jre/bin/jjs && \
#     rm /jre/bin/keytool && \
#     rm /jre/bin/orbd && \
#     rm /jre/bin/pack200 && \
#     rm /jre/bin/policytool && \
#     rm /jre/bin/rmid && \
#     rm /jre/bin/rmiregistry && \
#     rm /jre/bin/servertool && \
#     rm /jre/bin/tnameserv && \
#     rm /jre/bin/unpack200 && \
#     rm /jre/lib/ext/nashorn.jar && \
#     rm /jre/lib/jfr.jar && \
#     rm -rf /jre/lib/jfr && \
#     rm -rf /jre/lib/oblique-fonts && \
#     rm -rf /tmp/* /var/cache/apk/*

# ENV JAVA_HOME=/export/service
# ENV PATH=${PATH}:${JAVA_HOME}/bin

# 安装完，删除多余的apk
RUN rm -rf /var/cache/apk/* && rm -rf /packages
