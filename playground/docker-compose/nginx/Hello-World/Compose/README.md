

docker-compose.yml

```yaml
version: "3.9"
services:
  web:
    build: .
    ports:
      - "8080:80"
    volumes:
      - .:/usr/share/nginx/html
```



1. Create container with docker-compose

* `-d` คือ ให้รัน container แบบ detached mode หรือ รัน container แบบ background โดยไม่ต้องรันใน foreground และไม่ต้องรันใน terminal อีก
* `--build` คือ ให้ build image ใหม่ และ ให้รัน container ใหม่ด้วย
* `--force-recreate` คือ ให้รัน container ใหม่ แม้ว่า container นั้นจะยังรันอยู่
```bash
docker compose up -d
```