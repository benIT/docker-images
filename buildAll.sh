#!/bin/bash
set -euo pipefail
#IFS=$'\n\t'

usage (){
    echo -e "This script builds all 'Dockerfile' located in this folder. 2 options are managed."
    echo -e "-f: force image to be build without cache: 'docker build --no-cache'"
    echo -e "-p: push images at docker hub: 'docker push benit/image-name'"
}

separator(){
    SEPARATOR='\n##########################################\n'
    echo -e ${SEPARATOR}
}

PUSH_IMAGE=false
NO_CACHE=""
while getopts "fp" option; do
    case "${option}" in
        f)
            NO_CACHE='--no-cache'
            ;;
        p)
            PUSH_IMAGE=true
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done
shift $((OPTIND-1))

# get a list of Dockerfile by depth
# we need to parse the tree from surface to depth. Since dockerfile inherits the base image must be built first.
#todo: improve the path tree, all depth are not managed!
DOCKERFILES=$(echo */Dockerfile */*/Dockerfile */*/*/Dockerfile */*/*/*/Dockerfile */*/*/*/*/Dockerfile| sort | sed 's/\/\<Dockerfile\>//g')
for DOCKERFILE in $DOCKERFILES
do
    IMAGE_NAME="benit/"${DOCKERFILE////-} # replace '/' by '-' stretch/php/7.1/ffmpeg => stretch-php-7.1-ffmpeg
    #target command to build: docker build -t benit/stretch-php-7.0 stretch/php/7.0 --build-arg http_proxy --build-arg https_proxy
    DOCKER_BUILD_CMD="docker build -t $IMAGE_NAME ${DOCKERFILE} --build-arg http_proxy --build-arg https_proxy ${NO_CACHE}"
    separator
    echo -e "building image '${IMAGE_NAME}' for Dockerfile '${DOCKERFILE}' with command: '${DOCKER_BUILD_CMD}'"
    separator
    $DOCKER_BUILD_CMD
    if [ $PUSH_IMAGE = true ]; then
        echo "pusing image: '${IMAGE_NAME}'";
        docker push ${IMAGE_NAME}
    fi
done