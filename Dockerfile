FROM registry.saas.hand-china.com/tools/alpine:3.7-1

MAINTAINER dengyouquan@foxmail.com

COPY myblog/ /myblog/

RUN cd myblog/ && ls -l && mv hugo /usr/bin/ && rm -f hugo

#set work dir,and if no,hugo will don't found new site
WORKDIR myblog/

EXPOSE 1313

CMD hugo server -b http://localhost:1313 --bind=0.0.0.0
