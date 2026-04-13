FROM ubuntu:resolute
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Update apt-get
RUN apt-get update -q \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy dqrobotics install script and install dqrobotics
RUN mkdir -p ~/install/dqrobotics
COPY install_dqrobotics_ubuntu26.sh /root/install/dqrobotics/
RUN cd ~/install/dqrobotics  \
    && chmod +x install_dqrobotics_ubuntu26.sh  \
    && . install_dqrobotics_ubuntu26.sh