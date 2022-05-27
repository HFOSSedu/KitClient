# Use kitcon through a browser

This is the fastest way to get started with kitcon since it only requires
Docker to use. Once running, you interact with kitcon through a standard
Web browser using noVNC.

Working through a browser using noNVC can be clunky at times; for example,
copy-and-pasting into kitcon through noVNC is a multi-step operation.
If you want a smoother interface, consider
[using kitcon through a VNC client](use-vnc.md).

## Requires

* Docker

> **Important**
>
> Docker must be installed and running before you can run
> any of the commands in this documentation.

## Run kitcon

1. If you have an existing kitcon (stopped or running),
    first stop and remove it (follow instructions that follow this section).

2. Open a terminal and run

    ```bash
    docker run --name kitcon --detach -p 6901:6901 ghcr.io/hfossedu/kitcon
    ```

    Or if you want to run a specific version of kitcon, run the following
    replacing `VERSION` with the version you want.

    ```bash
    docker run --name kitcon --detach -p 6901:6901 ghcr.io/hfossedu/kitcon:VERSION
    ```

3. Open a browser to <!-- markdown-link-check-disable --><http://localhost:6901><!-- markdown-link-check-enabled -->
    * Select full-client
    * Enter `headless` for password.

## Stop a running kitcon

1. Opening a terminal and run

    ```bash
    docker stop kitcon
    ```

## Restart a stopped kitcon

1. Open a terminal and run

    ```bash
    docker start kitcon
    ```

## Remove a stopped kitcon

> **Warning: data loss**
>
> Removing kitcon will also remove any changes you have made
> to files within kitcon. Changes that you have pushed to
> another computer will not be affected.

1. Open a terminal and run

    ```bash
    docker rm kitcon
    ```

## Remove kticon from your system

1. Stop and remove all kitcon instances (see sections above for instructions).
2. Open a terminal and run

    ```bash
    docker rmi hfossedu/kitcon
    ```

    or if you ran a specific version of kitcon, run the
    following replacing `VERSION` with the version you ran.

    ```bash
    docker rmi hfossedu/kitcon:VERSION
    ```

    If you can't remember, run `docker images` in a terminal to list the images
    that are installed in your system.
