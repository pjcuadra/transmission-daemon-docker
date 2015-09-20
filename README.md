#Transmission Daemon Docker Container

This a docker container based on standard ubuntu:14.04 image.

## Build Image

To build this image first edit files/settings.json according to your needs;

```
    docker build -t transmission-daemon .
```

Then to start your docker just run;

```
    docker run -d -p 9091:9091 -i -t transmission-daemon
```

or

```
   docker run -d -p 9091:9091 -v <host-path>:<docker-path> -i -t transmission-daemon
```

The docker will start transmission-daemon automatically.
 
