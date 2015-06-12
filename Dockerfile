FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
ENV HEALTHCHECK /_healthcheck.txt
ENV PORT 30000

RUN apt-get update && \
    apt-get install -y nginx-light

RUN rm -f /etc/init.d/nginx

ADD ./app/ /app/

RUN apt-get remove -y --purge gcc cpp binutils make git-core && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN find /app -type d -print0 | xargs -0 chmod +xr && \
    find /app -type f -print0 | xargs -0 chmod +r

EXPOSE 30000

CMD ["/app/start"]
