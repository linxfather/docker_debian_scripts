FROM debian:bookworm-slim

ARG USERNAME1=appuser

# Create default user
RUN apt update && \
    apt install mc curl nano tar sudo -y && \
    useradd -m -s /bin/bash -G sudo $USERNAME1
USER $USERNAME1
#
# Install go
COPY ./scripts /home/$USERNAME1/scripts/
COPY ./testproject1 /home/$USERNAME1/testproject1/
USER root
RUN bash /home/$USERNAME1/scripts/install_go_root.sh
USER $USERNAME1
RUN bash /home/$USERNAME1/scripts/install_go_user.sh
# Install ginkgo
RUN bash /home/$USERNAME1/scripts/install_ginkgo.sh
#

CMD ["sleep", "infinity"]
