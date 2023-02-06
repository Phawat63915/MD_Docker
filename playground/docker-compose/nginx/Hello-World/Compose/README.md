
1. Create container with docker-compose

> *^Note:** ในการสร้าง container ให้ใช้คำสั่ง `docker compose up` แทน `docker-compose up` เพราะว่า `docker-compose` จะถูกเปลี่ยนชื่อเป็น `docker compose` ในอนาคต

* `-d` คือ ให้รัน container แบบ detached mode หรือ รัน container แบบ background โดยไม่ต้องรันใน foreground และไม่ต้องรันใน terminal อีก
* `--build` คือ ให้ build image ใหม่ และ ให้รัน container ใหม่ด้วย
* `--force-recreate` คือ ให้รัน container ใหม่ แม้ว่า container นั้นจะยังรันอยู่
```bash
docker compose up -d
```