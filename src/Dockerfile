FROM accetto/ubuntu-vnc-xfce-firefox-g3@sha256:62f365d41814643651a5b5c7ea7a397e692b40126a903555993999cae150b199

LABEL org.opencontainers.image.source = "https://github.com/HFOSSedu/KitClient"

USER root

# Install common developer tools
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        git=1:2.25.1-1ubuntu3.4 \
        gedit=3.36.2-0ubuntu1 \
        vim=2:8.1.2269-1ubuntu5.7 \
        emacs=1:26.3+1-1ubuntu2 \
        nano=4.8-1ubuntu1 \
        meld=3.20.2-1ubuntu1 \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install VS Code
#   Detect failures in a piped command: x | y
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        wget=1.20.3-1ubuntu2 \
        gpg \
        apt-transport-https && \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
    install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
    sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' && \
    rm -f packages.microsoft.gpg && \
    apt-get update && \
    apt-get -y install --no-install-recommends \
        code=1.67.2-1652812855 && \
    apt-get -y --purge remove wget apt-transport-https && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install git hook to install a kit after it is cloned.
COPY ./install-kit-features-into-client.sh /usr/share/git-core/templates/hooks/post-checkout
RUN chmod +x /usr/share/git-core/templates/hooks/post-checkout

USER headless
