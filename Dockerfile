# Dockerfile for the multiproductions/qt - A Docker base image for Qt projects.

FROM ubuntu:20.04
MAINTAINER Alexandre Quessy <alexandre@quessy.net>

# Install core dependencies

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --quiet --no-install-recommends \
        build-essential \
        libqt5opengl5-dev \
        libqt5serialport5-dev \
        libqt5websockets5-dev \
        qml-module-qt-labs-platform \
        qml-module-qt-labs-settings \
        qml-module-qt-websockets \
        qml-module-qtquick-controls2 \
        qml-module-qtquick-dialogs \
        qml-module-qtquick-extras \
        qml-module-qtquick-localstorage \
        qml-module-qttest \
        qt5-default \
        qtdeclarative5-dev \
        qttools5-dev-tools

