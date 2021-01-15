# Docker FPM

This is a Dockerfile for https://github.com/jordansissel/fpm on Alpine Linux.

Features: 

- Default entrypoint is `fpm`.
- Runs as non-root `fpm` user.
- Automated builds on Docker Hub.

## Usage

``` sh
docker run --rm fleetdm/fpm
```
