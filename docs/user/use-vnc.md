# Use KitClient through a browser

This approach requires installing a VNC client in addition to Docker,
but provides a more pleasant interface.

## Requires

* [Docker](https://www.docker.com/)
* [TigerVNC](https://tigervnc.org/)

Any VNC client will do. We recommend TigerVNC because it is open-source
and is available for most operating systems.

> **Important**
>
> Docker must be installed and running before you can run
> any of the commands in this documentation.

## Run KitClient

1. If you have an existing KitClient (stopped or running),
    first stop and remove it (follow instructions that follow this section).

2. Open a terminal and run

    ```bash
    docker run --name KitClient --detach -p 5901:5901 ghcr.io/hfossedu/kitclient
    ```

    Or if you want to run a specific version of KitClient, run the following
    replacing `VERSION` with the version you want.

    ```bash
    docker run --name KitClient --detach -p 5901:5901 ghcr.io/hfossedu/kitclient:VERSION
    ```

3. Run TigerVNC
    * Connect to localhost
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
