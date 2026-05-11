FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y curl bash ca-certificates && \
    apt clean

CMD echo "$EMAIL" | sh -c "$(curl -fsSL https://dashboard.minet.vn/setup)"
