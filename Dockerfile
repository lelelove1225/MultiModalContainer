# apt listを使いながら、必要なパッケージをインストールする

FROM ubuntu:22.04

# Soxを使うための設定
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    pulseaudio=1:15.99.1+dfsg1-1ubuntu2.1 socat=1.7.4.1-3ubuntu4 alsa-utils=1.2.6-1ubuntu1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*



