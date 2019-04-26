#!/bin/bash
while getopts d:s:m:u:p: option
do
	case "${option}"
	in
		d) DOWNLOADS_FOLDER=${OPTARG};;
		s) SERIES_FOLDER=${OPTARG};;
		m) MOVIES_FOLDER=${OPTARG};;
		u) USERNAME=${OPTARG};;
		p) PASSWORD=${OPTARG};;
	esac
done

export DOWNLOADS_FOLDER=$DOWNLOADS_FOLDER
export SERIES_FOLDER=$SERIES_FOLDER
export MOVIES_FOLDER=$MOVIES_FOLDER
export USERNAME=$USERNAME
export PASSWORD=$PASSWORD
export PUID=$(id -u)
export PGID=$(id -g)

docker-compose up