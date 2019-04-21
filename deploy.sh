#!/bin/bash

export PGID=$(id -u)
export PUID=$(id -g)

while getopts d:s:m: option
do
	case "${option}"
	in
		d) DOWNLOADS_FOLDER=${OPTARG};;
		s) SERIES_FOLDER=${OPTARG};;
		m) MOVIES_FOLDER=${OPTARG};;
	esac
done

if [ -z "$DOWNLOADS_FOLDER" ]
then
	DOWNLOADS_FOLDER=./downloads
fi

if [ -z "$SERIES_FOLDER" ]
then
	SERIES_FOLDER=./series
fi

if [ -z "$MOVIES_FOLDER" ]
then
	MOVIES_FOLDER=./movies
fi

export DOWNLOADS_FOLDER=$DOWNLOADS_FOLDER
export SERIES_FOLDER=$SERIES_FOLDER
export MOVIES_FOLDER=$MOVIES_FOLDER

docker-compose up