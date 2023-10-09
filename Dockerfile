FROM ubuntu:22.04
ARG UID=1000
ARG GID=1000
ARG USERNAME=tbriot
ARG PASS=tbriot

RUN apt update && \
    apt install -y sudo && \
    # Create user primary group
    addgroup --gid $GID $USERNAME && \ 
    # Create user
    adduser --uid $UID --gid $GID $USERNAME && \ 
    # Set user password
    echo "${USERNAME}:${PASS}" | chpasswd && \ 
    # Add user to sudo group
    usermod -aG sudo $USERNAME 

WORKDIR /home/$USERNAME

USER $USERNAME
