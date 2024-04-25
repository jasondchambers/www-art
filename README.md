# www-art
Website for my art. 

The website is called [sketchyjason.com](https://sketchyjason.com).

During development, simply run the following:

    $ hugo server

To run, you can simply pull down the image from GHCR:

    $ docker login ghcr.io -u yzxbmlf
    $ docker run -p 8080:80 ghcr.io/jasondchambers/www-art:<tag>

Replace tag with the desired number. You can find these on [GitHub](https://github.com/jasondchambers/www-art/pkgs/container/www-art).

The pipeline also publishes to DockerHub, as this is supported by GCP (Google Cloud Run). It is published at this [location](https://hub.docker.com/repository/docker/yzxbmlf/www-art/general). Run as follows:

    $ docker run -p 8080:80 yzxbmlf/www-art:<tag>

Replace tag with the desired number. You can find these on [Docker Hub](https://hub.docker.com/repository/docker/yzxbmlf/www-art/general).

The container is deployed using Google Cloud Run and can be managed in [Google Cloud](https://console.cloud.google.com/home/dashboard?hl=en&project=micro-spanner-416713).

The domain sketchyjason.com is managed using [SquareSpace](https://account.squarespace.com/domains).

The deployed container in Google Cloud Run, is connected to a Firebase Hosting site. This was the simplest way to associate my custom domain with it. [Firebase Console](https://console.firebase.google.com/u/0/).
