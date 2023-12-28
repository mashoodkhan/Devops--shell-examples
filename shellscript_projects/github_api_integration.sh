#!/bin/bash

USERNAME=$username
TOKEN=$token

API_URL="https.api.github.com"

REPO_OWNER=$1
REPO_NAME=$2

#Function to send a get request to github api

function github_api_get {
  
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

function read_access_for_repos{
      local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

      collaborators="$(github_api_get "$endpoint")"

      if[[-z "$collaborators"]]; then
	      echo "No Users"
      else
	      echo "$collaborators"
      fi

}

