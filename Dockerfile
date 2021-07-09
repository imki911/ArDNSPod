FROM alpine:3.14
WORKDIR /ArDNSPod
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache --virtual .build-deps curl wget
ADD ./ /ArDNSPod
CMD ["/bin/sh", "/ArDNSPod/ddnspod.sh"]
