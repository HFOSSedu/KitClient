# KitClient

A development environment for use with the Kits.

## Requires

* [Docker](https://www.docker.com/)

## Quickstart

With Docker running, open a terminal and enter:

```bash
docker run --name KitClient --detach -p 6901:6901 -p 5901:5901 ghcr.io/hfossedu/kitclient
```

Open a browser to <http://localhost:6901> or open a [VNC client](https://tigervnc.org/) to localhost:5901.

Password: `headless`

## Documentation

* [Use in a browser](docs/user/use-novnc.md)
* [Use in a VNC client](docs/user/use-vnc.md)
