# Dockerfile for Wisecow app (shell-based webserver)
FROM debian:bookworm-slim

# set noninteractive for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install runtime tools that wisecow may use (fortune, cowsay, socat/ncat, bash)
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    fortune-mod \
    cowsay \
    socat \
    curl \
    fortunes-min \
 && ln -s /usr/games/fortune /usr/bin/fortune \
 && ln -s /usr/games/cowsay /usr/bin/cowsay \
 && rm -rf /var/lib/apt/lists/*

# Copy app script
WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

# Expose port used by README (4499)
EXPOSE 4499

# Default command: run the script
CMD ["/app/wisecow.sh"]
