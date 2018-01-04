#!/bin/bash

print_me () {
    echo "printing \
multiline"
    }

# Basic functions
e () {
    emacs "$@" &
}


# Create a new git repository
create_git_repo () {
    local REPO_NAME=$1
    local DESCRIPTION=$2
    echo ${REPO_NAME} ${DESCRIPTION}

    # Curl some json to the github API oh damn we so fancy
    curl -u 'monibahmed' https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"description\": \"${DESCRIPTION}\"}"

}

