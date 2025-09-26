FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    cowsay \
    fortune-mod \
    fortunes-min \
    netcat-openbsd

WORKDIR /app
COPY wisecow.sh .
RUN chmod +x wisecow.sh

EXPOSE 4499
CMD ["./wisecow.sh"]