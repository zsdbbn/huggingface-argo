FROM ghcr.io/3kmfi6hp/argo-airport-paas:main
RUN apk add --no-cache shadow \
    && useradd -m xibaozi -u 1000 \
    && echo 'xibaozi:1000' | chpasswd \
    && usermod -aG sudo xibaozi