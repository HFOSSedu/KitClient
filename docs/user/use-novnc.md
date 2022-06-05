# Use KitClient through a browser

This is the fastest way to get started with KitClient since it only requires
Docker to use. Once running, you interact with KitClient through a standard
Web browser using noVNC.

Working through a browser using noNVC can be clunky at times; for example,
copy-and-pasting into KitClient through noVNC is a multi-step operation.
If you want a smoother interface, consider
[using KitClient through a VNC client](use-vnc.md).

## Requires

* Docker

> **Important**
>
> Docker must be installed and running before you can run
> any of the commands in this documentation.

## Run KitClient

1. If you have an existing KitClient (stopped or running),
    first stop and remove it (follow instructions that follow this section).

2. Open a terminal and run

    ```bash
    docker run --name KitClient --detach -p 6901:6901 ghcr.io/hfossedu/kitclient
    ```

    Or if you want to run a specific version of KitClient, run the following
    replacing `VERSION` with the version you want.

    ```bash
    docker run --name KitClient --detach -p 6901:6901 ghcr.io/hfossedu/kitclient:VERSION
    ```

3. Open a browser to <!-- markdown-link-check-disable --><http://localhost:6901><!-- markdown-link-check-enabled -->
    * Select full-client
    * Enter `headless` for password.

## Stop a running KitClient

1. Opening a terminal and run

    ```bash
    docker stop KitClient
    ```

## Restart a stopped KitClient

1. Open a terminal and run

    ```bash
    docker start KitClient
    ```

## Remove a stopped KitClient

> **Warning: data loss**
>
> Removing KitClient will also remove any changes you have made
> to files within KitClient. Changes that you have pushed to
> another computer will not be affected.

1. Open a terminal and run

    ```bash
    docker rm KitClient
    ```

## Remove KitClient from your system

1. Stop and remove all KitClient instances (see sections above for instructions).
2. Open a terminal and run

    ```bash
    docker rmi hfossedu/KitClient
    ```

    or if you ran a specific version of KitClient, run the
    following replacing `VERSION` with the version you ran.

    ```bash
    docker rmi hfossedu/KitClient:VERSION
    ```

    If you can't remember, run `docker images` in a terminal to list the images
    that are installed in your system.
