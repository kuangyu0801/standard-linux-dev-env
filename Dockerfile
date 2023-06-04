# Use Ubuntu 20.04.6 LTS (Focal Fossa), April 2025
FROM ubuntu:focal

USER root

RUN apt-get update && apt-get install -y sudo vim git

# Additional packages added in here
# Ex. apt-get install SOME_LIB

# Create user account with home directory and sudo privilege
RUN useradd -G sudo -c "Docker image user" -m liku

# Set password
RUN echo "liku:liku" | chpasswd

USER liku

# Build image
# docker build -t kuangyu0801/test-ubuntu .

# Start container
# $ docker run -it kuangyu0801/test-ubuntu