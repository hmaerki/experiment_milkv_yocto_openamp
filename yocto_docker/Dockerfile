FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN  apt-get update -y \
    && apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio \
    python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 \
    libegl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev zstd liblz4-tool file locales libacl1 \
    kas

RUN locale-gen en_US.UTF-8

RUN adduser yocto

USER yocto

WORKDIR /home/yocto

RUN cd /home/yocto

# RUN cd /home/yocto \
#     && mkdir oe \
#     && cd oe \
#     && git clone --depth=1 https://github.com/kinsamanka/meta-milkv

# ENV MACHINE=milkv-duo256m
# RUN cd oe \
# && kas build meta-milkv/kas-project.yml

CMD ["sleep", "infinity"]
