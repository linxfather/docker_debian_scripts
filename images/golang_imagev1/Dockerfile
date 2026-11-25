FROM debian:bookworm-slim

ARG USERNAME1=appuser

# Create default user
RUN apt update && \
    apt install mc curl nano tar sudo -y && \
    useradd -m -s /bin/bash -G sudo $USERNAME1
USER $USERNAME1
#

CMD ["sleep", "infinity"]
