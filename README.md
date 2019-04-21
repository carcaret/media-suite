# Intro
Suite to manage series and movies. It uses [Jackett][1], [Sonarr][2], [Radarr][3] and [Transmission][4] to search, download and manage the content

## Prerequisites
Docker Engine v1.13.0+ and Docker Compose must be installed

## Run it
You should use the file `deploy.sh` to deploy the whole suite. The following options can be passed to define the folders where the files will be stored:

* `-d`: folder where downloaded files will be stored. Defaults to `./downloads`
* `-s`: TV Shows library folder. Defaults to `./series`
* `-m`: Movies library folder. Defaults to `./movies`

### Command
```bash
$ ./deploy.sh -d /path/to/downloads -s /path/to/series -m /path/to/movies
```

[1]: https://github.com/Jackett/Jackett
[2]: https://github.com/Sonarr/Sonarr
[3]: https://github.com/Radarr/Radarr
[4]: https://transmissionbt.com/