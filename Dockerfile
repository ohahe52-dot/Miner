FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y curl bash ca-certificates && \
    apt clean

CMD bash -c 'curl -A "Mozilla/5.0" -fsSL https://dashboard.minet.vn/setup | bash'
