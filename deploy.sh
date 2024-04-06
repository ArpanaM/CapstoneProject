#!/bin/bash
# Push docker image to docker hub registry

# docker login

sudo docker login -u arpanamuriki -p dckr_pat_MiRKO9JlzFxLv7ydo4XDqSzXN3I

# tag the image with the Docker Hub repository name and version

if [[ $GIT_BRANCH == 'origin/main' ]]; then
docker tag myreactapp_img:v1  arpanamuriki/prod
# list of images after adding tag name
docker images
docker push arpanamuriki/prod
elif [[ $GIT_BRANCH == 'origin/dev' ]]; then
docker tag myreactapp_img:v1 arpanamuriki/dev
fi


