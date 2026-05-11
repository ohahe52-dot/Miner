FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y bash curl ca-certificates && \
    apt clean

COPY setup.sh /setup.sh

RUN chmod +x /setup.sh

CMD bash -c 'printf "%s\n" "$EMAIL" | bash /setup.sh && tail -f /dev/null'
