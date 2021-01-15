FROM alpine:3.13
MAINTAINER Fleet Developers <engineering@fleetdm.com>

# Install dependencies.
# Adapted from the Dockerfile in FPM's repository:
# https://github.com/jordansissel/fpm/blob/master/Dockerfile
RUN apk add --no-cache \
    ruby \
    ruby-dev \
    ruby-etc \
    gcc \
    libc-dev \
    libffi-dev \
    make \
    rpm \
    && gem install --no-document fpm

# Run as non-root user
RUN addgroup -S fpm && adduser -S fpm -G fpm
USER fpm
WORKDIR /home/fpm

# Default to running fpm
ENTRYPOINT ["/usr/bin/fpm"]
CMD ["--help"]

