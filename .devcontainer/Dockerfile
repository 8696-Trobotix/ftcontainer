FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update && export DEBIAN_FRONTEND=noninteractive \
    && apt install -y --no-install-recommends sdkmanager \
    && sdkmanager --install "build-tools;30.0.3" \
    && sdkmanager --install "platforms;android-29" \
    # && sdkmanager --install "platform-tools" \
    # && sdkmanager --install "tools" \
    && yes | sdkmanager --licenses

COPY post-create-env.sh /usr/local/post-create-env.sh

ENV ANDROID_HOME="/opt/android-sdk/"
