FROM mcr.microsoft.com/devcontainers/base:jammy

# Install Noto Serif CJK and Noto Sans CJK
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends lilypond fonts-noto-cjk

# Install LXGW Wenkai and LXGW Wenkai Mono as an alternative to both Kai and Fangsong
RUN cd /usr/share/fonts/ \
    && wget https://github.com/lxgw/LxgwWenKai/releases/download/v1.245.1/LXGWWenKai-Regular.ttf \
    && wget https://github.com/lxgw/LxgwWenKai/releases/download/v1.245.1/LXGWWenKaiMono-Regular.ttf \
    && cd
