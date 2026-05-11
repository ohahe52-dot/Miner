FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y bash curl ca-certificates && \
    apt clean

COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]
