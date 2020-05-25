# Qt base image

Docker base image for Qt projects.

## Overview

This Docker image allows to build Qt projects in an Ubuntu container.

## Installation

See the official docker documentation for a general overview of docker and how to install:

https://docs.docker.com/engine/installation/linux/

## Usage

Create a Dockerfile that inherits from multiproductions/qt and that runs qmake and make.

```
FROM multiproductions/qt
COPY . /app
WORKDIR /app
RUN qmake . && make
CMD ["yourproject"]
```

Replace "yourproject" above by the path to your executable.

Pro tip: To reduce the size of your final image, consider using a multi-stage build.

