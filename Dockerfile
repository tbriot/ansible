FROM ubuntu:24.04
ARG UID=1001
ARG GID=1001
ARG USERNAME=tbriot
ARG PASS=tbriot

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && \
    apt install -y sudo wget && \
    # Create user primary group
    groupadd --gid $GID $USERNAME && \
    # Create user
    useradd --uid $UID --gid $GID --create-home --shell /bin/bash $USERNAME && \
    # Set user password
    echo "${USERNAME}:${PASS}" | chpasswd && \
    # Add user to sudo group
    usermod -aG sudo $USERNAME 

WORKDIR /home/$USERNAME

USER $USERNAME
