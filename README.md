# www-art
Website for my art. 
 
The website is called [sketchyjason.com](https://sketchyjason.com).

The theme is incorporated as a submodule. Immediately, upon clone be sure to run this:

    git submodule update --init --recursive

During development, simply run the following:

    $ hugo server

To run, you can simply pull down the image from GHCR:

    $ docker login ghcr.io -u yzxbmlf
    $ docker run -p 8080:80 ghcr.io/jasondchambers/www-art:<tag>

Replace tag with the desired number. You can find these on [GitHub](https://github.com/jasondchambers/www-art/pkgs/container/www-art).

The pipeline also publishes to DockerHub, as this is supported by GCP (Google Cloud Run). It is published at this [location](https://hub.docker.com/repository/docker/yzxbmlf/www-art/general). Run as follows:

    $ docker run -p 8080:80 yzxbmlf/www-art:<tag>

Replace tag with the desired number. You can find these on [Docker Hub](https://hub.docker.com/repository/docker/yzxbmlf/www-art/general).

The image is built automatically as a GitHub action, however you can build locally as follows:

    $ docker build .
