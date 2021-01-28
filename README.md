# WordPress Container

![Build Bastion Container](https://github.com/cwiederspan/wordpress-container-image/workflows/Build%20and%20Push%20Container%20Image/badge.svg)

A project for creating a modified WordPress container for use in Microsoft Azure.

## Purpose

When running WordPress from a container in an Azure Web App for Containers in App Services, you need to add 
some special instructions to the `dockerfile` in order to be able to SSH into the containers from the Azure
portal.

[Adding SSH Support](https://docs.microsoft.com/en-us/azure/app-service/configure-custom-container?pivots=container-linux#enable-ssh) -
Information about adding the SSH support in the container image.

[Example WordPress Docker File](https://github.com/docker-library/wordpress/blob/master/docker-entrypoint.sh) - This shows how WordPress
runs the `docker-entrypoint.sh` file to startup. Based on that, we can override that in our own `dockerfile`.

## Build and Test

```bash

docker build -t cwiederspan/mywordpress:latest .

docker run -d --name mywordpress cwiederspan/mywordpress:latest

docker exec -it mywordpress /bin/bash

docker push cwiederspan/mywordpress:latest

```

## Using the Container

> TODO: Create a link to the **Learn WordPress** repository.

## GitHub Actions

This project uses GitHub Actions and the [`pipeline.yml`](.github/workflows/pipeline.yml) file to build and push
this image to [Docker Hub](https://hub.docker.com/r/cwiederspan/mywordpress).

## Follow Up

Email chwieder@microsoft.com for more information on this container and scenarios for usage.
