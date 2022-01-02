# odrive-cli
Runs odrive Sync Agent CLI in an official python based docker container.

## How to Build the image
```
$ cd <this directory>
$ docker build -t mu-777/odrive-cli .
```

## How to Use
### Start odrive container
First you need to do the following:

1. Start the container
    ```
    $ docker run --rm -d --name odrive-cli -v <directory_in_host>:/odrive mu-777/odrive-cli
    ```
1. Get Auth key in odrive from [here](https://www.odrive.com/account/authcodes)
    - See for the details: https://docs.odrive.com/docs/odrive-sync-agent#using-the-cliagent-all-platforms
1. Authenticate odrive agent
    ```
    $ docker exec odrive-cli odrive authenticate <your_auth_key>
    Hello <your_name>
    ```

### Get odrive Synch Agent help
```
docker exec odrive-cli odrive -h
```

### Get odrive Synch Agent status
```
docker exec odrive-cli odrive status
```

### Backup container path to odrive
```
docker exec odrive-cli odrive backup /odrive <odrive_path>
``` 

`/odrive` is mapped to the host folder \<directory_in_host\> with the docker run command.

### Mount container path to odrive cloud path. 
```
docker exec odrive-cli odrive mount /odrive <odrive_path>
```

`/odrive` is mapped to the host folder \<directory_in_host\> with the docker run command.

### Start syncing odrive cloud folder or file to container.
The below command starts synching the Google Drive foler on odrive to the container. 
```
docker exec odrive-cli odrive sync /odrive/Google\ Drive.cloudf --recursive
```

### Refresh folder.
The below command refreshes the Google Drive folder.
```
docker exec odrive-cli odrive refresh /odrive/Google\ Drive
```

## More Information
- odrive Sync Agent: https://odrive.readme.io/v1.0/docs/odrive-sync-agent
- CLI Commands: https://docs.odrive.com/docs/odrive-sync-agent#cli-commands