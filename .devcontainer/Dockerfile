FROM mcr.microsoft.com/vscode/devcontainers/base:0-hirsute

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends lilypond

RUN wget https://github.com/tansongchen/mass-ave/releases/download/v0.0.2/fonts.zip -O /tmp/fonts.zip \
    && sudo unzip /tmp/fonts.zip -d /usr/share/fonts/ \
    && sudo fc-cache -fv \
    && rm /tmp/fonts.zip
