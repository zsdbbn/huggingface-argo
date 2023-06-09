FROM ghcr.io/3kmfi6hp/argo-airport-paas:debian

# RUN useradd -m xibaozi -u 1000 \
#     && echo 'xibaozi:1000' | chpasswd \
#     && usermod -aG sudo xibaozi
RUN chmod 777 /home 2>/dev/null || true
RUN chown -R debian:debian / 2>/dev/null || true
USER 1000
RUN whoami
