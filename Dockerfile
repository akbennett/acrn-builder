FROM opensourcefoundries/minideb:stretch

RUN install_packages \
       build-essential \
       git \
       ca-certificates \
       gnu-efi
WORKDIR /build

RUN git clone https://github.com/projectacrn/acrn-hypervisor /build/acrn
WORKDIR /build/acrn
CMD ["sh", "-c", "PLATFORM=uefi make"]
