#!/bin/bash -
declare SCRIPT_DIR=$(dirname $(realpath $0))
declare REPO_DIR="$(dirname $SCRIPT_DIR)/nestjs-rest-api"

runChecks () {
	cd $REPO_DIR
	npm run lint
	npm run test
	npm audit
}

main () {
	runChecks
}

main
