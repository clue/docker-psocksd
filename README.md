# docker-psocksd

[psocksd](https://github.com/clue/psocksd) is a fast, extensible SOCKS tunnel / proxy server daemon written in PHP.
This is a [docker](https://www.docker.io) image that eases setup.

## About psocksd

> *From [the official readme](https://github.com/clue/psocksd#readme):*

The SOCKS protocol family can be used to easily tunnel TCP connections independent of the actual application level protocol, such as HTTP, SMTP, IMAP, Telnet, etc. In this mode, a SOCKS server acts as a generic proxy allowing higher level application protocols to work through it.

## Usage

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/psocksd/),
so there's no setup required.
Using this image for the first time will start a download.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```bash
$ docker run -d -p 9050:9050 clue/psocksd
```

This is a rather common setup following docker's conventions:

* `-d` will run a detached session running in the background
* `-p {OutsidePort}:9050` will bind the SOCKS listening port to the given outside port
* `clue/psocksd` the name of this docker image
