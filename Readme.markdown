Docker Registry
===============

Docker image based on the [official image][official], using local storage.

[official]: https://github.com/dotcloud/docker-registry

## Running the registry

Assuming you wanted to store registry files at `/var/local/registry` on the host
machine:

    docker \
        -p 5000 \
        -v /var/local/registry:/registry \
        -e 'SETTINGS_FLAVOR=prod' \
        thumbtack/docker-registry

(The registry in this image will always store its assets at `/registry`.)
