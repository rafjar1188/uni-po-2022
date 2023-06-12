#!/usr/bin/env bash

# Example commands
# docker run --rm --volume "./project":"/home/student/projobj/" kprzystalski/projobj-pascal "./src/tests/test_runner"
# docker run --rm --volume "./project":"/home/student/projobj/" kprzystalski/projobj-pascal "./src/main"

# docker run --rm --volume "./project":"/home/student/projobj/" -w "/home/student/projobj/src/tests" kprzystalski/projobj-pascal "./test_runner"
# docker run --rm --volume "./project":"/home/student/projobj/" -w "/home/student/projobj/src" kprzystalski/projobj-pascal "./main"

IMAGE_NAME="kprzystalski/projobj-pascal"

SOURCE_DIR="./project"
CONTAINER_DIR="/home/student/projobj"

BIN_DIR="${CONTAINER_DIR}/bin"

# Check if Docker image exists locally - not really needed since Docker itself will pull the image if it's not found locally
# if [[ "$(docker images -q ${IMAGE_NAME} 2> /dev/null)" == "" ]]; then
#   echo "Docker image not found locally. Pulling from Docker Hub..."
#   docker pull ${IMAGE_NAME}
# fi

# Compile the Application and Test Application
docker run --rm -v "${SOURCE_DIR}:${CONTAINER_DIR}" "${IMAGE_NAME}" make all
docker run --rm -v "${SOURCE_DIR}:${CONTAINER_DIR}" -w "${BIN_DIR}" "${IMAGE_NAME}" ./tests/test_runner
docker run --rm -v "${SOURCE_DIR}:${CONTAINER_DIR}" -w "${BIN_DIR}" "${IMAGE_NAME}" ./main
