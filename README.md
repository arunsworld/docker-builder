
Repository for Docker image to build stuff using gcc, make, cmake etc.

## How to build

`./build_docker.sh`

## How to use

`docker run --rm -it --name builder -v "$PWD":/app arunsworld/builder:latest`

## Using with Python

* First create a conda volume
    * `docker volume create conda`
    * `docker run --rm -it -v conda:/newconda arunsworld/django-apache:Anaconda3-5.2.0 bash`
    * `cd /opt/conda/`
    * `cp -r * /newconda/`
* Now mount it in the docker image
    * `docker run --rm -it --name builder -v "$PWD":/app -v conda:/opt/conda arunsworld/builder:latest`
    * `. /opt/conda/etc/profile.d/conda.sh`
    * `conda activate base`

    