# Use kitcon through a browser

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

## Run kitcon

1. If you have an existing kitcon (stopped or running),
    first stop and remove it (follow instructions that follow this section).

2. Open a terminal and run

    ```bash
    docker run --name kitcon --detach -p 5901:5901 hfossedu/kitcon
    ```

    Or if you want to run a specific version of kitcon, run the following
    replacing `VERSION` with the version you want.

    ```bash
    docker run --name kitcon --detach -p 5901:5901 hfossedu/kitcon:VERSION
    ```

3. Run TigerVNC
    * Connect to localhost
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
