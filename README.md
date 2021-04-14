# docker_pc

How to use

### prepare for host os (Windows only)
```
echo 'machine github.com
login ******
password ******
' > ~/.netrcpc
```

| key       | value                |
| --------- | -------------------- |
| login     | github account name  |
| password  | github password      |

### prepare docker-compose

```
mkdir ~/gitpc
cd ~/gitpc
curl --output docker-compose.yml https://raw.githubusercontent.com/tinnakornpop/docker_pc/laravel/docker-compose2.yml
```

### How to use (recommend)
```
cd ~/gitpc
docker-compose run git "YourName" "YourEmail"
```

### Docker-compose build and run
```
cd ~/gitpc/docker_pc
docker-compose build
docker-compose run git "YourName" "YourEmail"
```

### Build command (Developer's memo)
```
cd ~/gitpc/docker_pc/docker/gitpc
docker build . -t tinnakornpop/docker_pc:0.0.6
docker build . -t tinnakornpop/docker_pc:latest
docker login
docker push tinnakornpop/docker_pc:0.0.6
docker push tinnakornpop/docker_pc:latest
```
