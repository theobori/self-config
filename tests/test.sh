#!/usr/bin/env bash

# Constants
IMG=ubuntussh
TARGET_DIR=/tmp/self-config-test
PORT=2022

function docker_build_and_run() {
    # Build the Docker image if it doesnt exist
    [[ -z $(docker images | grep $IMG) ]] && docker build -t $IMG .

    # Kill prevention
    docker kill $(docker ps | grep $IMG | head -c 12)

    # Run the test container
    docker run -itd \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -p $PORT:22 \
        $IMG
}

function test_playbook() {
    # Setup the target directory
    rm -rf $TARGET_DIR
    mkdir $TARGET_DIR
    cp -r ../example/without_vault/* ../* $TARGET_DIR

    # Run the playbook
    ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
        -i $TARGET_DIR/inventory \
        $TARGET_DIR/playbook.yml
}

function main() {
    docker_build_and_run
    test_playbook
}

main
