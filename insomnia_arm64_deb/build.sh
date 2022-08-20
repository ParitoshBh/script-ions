#! /bin/bash

docker run --rm -it \
    -v $PWD/scripts:/scripts \
    -v $PWD/dist:/dist \
    node:16.14.2 /bin/bash -c "cd scripts && \
        chmod +x install_dependencies.sh && \
        sh install_dependencies.sh"
