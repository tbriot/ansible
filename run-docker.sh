#!/usr/bin/env bash

sudo docker run -it --rm -v "$(pwd):/home/tbriot/projects/tbriot/ansible" fresh-install /bin/bash
