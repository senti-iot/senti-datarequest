#!/bin/bash

if [[ "$1" == "master" ]]; then 
	echo
	echo Deploying Senti datarequest $1 ... 
	rsync -r --quiet $2/ deploy@rey.webhouse.net:/srv/nodejs/senti/services/datarequest/production
	echo
	echo Restarting Senti datarequest service: $1 ... 
	ssh deploy@rey.webhouse.net 'sudo /srv/nodejs/senti/services/datarequest/production/scripts/service-restart.sh master'
	echo
	echo Deployment to Senti datarequest $1 and restart done!
	exit 0
fi 

if [[ "$1" == "dev" ]]; then 
	echo
	echo Deploying Senti datarequest $1 ... 
	rsync -r --quiet $2/ deploy@rey.webhouse.net:/srv/nodejs/senti/services/datarequest/development
	echo
	echo Restarting Senti datarequest service: $1 ... 
	ssh deploy@rey.webhouse.net 'sudo /srv/nodejs/senti/services/datarequest/development/scripts/service-restart.sh dev'
	echo
	echo Deployment to Senti datarequest $1 and restart done!
	exit 0
fi