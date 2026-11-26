FROM debian:bookworm-slim

ARG USERNAME1=appuser

# Install base packages
RUN apt update && \
    apt install mc curl nano tar sudo -y && \
    useradd -m -s /bin/bash -G sudo $USERNAME1
# Install clang
RUN apt install g++ libcriterion-dev -y
#
USER $USERNAME1

#
CMD ["sleep", "infinity"]
