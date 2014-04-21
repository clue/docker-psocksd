# docker-psocksd

A minimal docker installation of [psocksd](https://github.com/clue/psocksd) on Ubuntu base image.

## Instructions

```bash
$ git clone https://github.com/clue/docker-psocksd.git
$ cd docker-psocksd
$ sudo docker build -t psocksd .
```

### Run in foreground

```bash
$ sudo docker run -i --rm -p 9090:9050 -t psocksd
```

### Run in background

```bash
$ sudo docker run -d -p 9050:9050 -t psocksd
```
