# docker_pc no tig in git
## Docker image を作れました。（笑）

### example
```
cd ~/gitpc/computer-py; cp server/env/.env.local server/.env; docker-compose up --build -d; docker-compose exec php bash
```

### test
```
cd ~/gitpc/computer-py; docker-compose build --no-cache; docker-compose up -d; docker-compose exec app bash
```

## Use this command
```
cd ~/gitpc/computer-py; docker-compose up --build -d; docker-compose exec app bash
```
