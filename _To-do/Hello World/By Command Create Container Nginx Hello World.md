
> Note: ขั้นตอนต่อไปนี้เป็นขั้นตอนที่เรามี Docker ในเครื่องแล้ว

**1. สร้าง Container ด้วยคำสั่ง**

`docker run --name <CONTAINNE_NAME> -d -p 8080:80 <IMAGE_NAME>`

* <CONTAINNE_NAME> คือ ชื่อ Container ที่เราต้องการจะตั้ง
* <IMAGE_NAME> คือ ชื่อ Image ที่เราต้องการจะใช้ ในครั้งนี้เรา ใช้ nginx
```bash
docker run --name hello_world -d -p 8080:80 nginx
```

**2. ตรวจสอบ Container ที่สร้าง**

```bash
docker ps -a
```
*__OUT: ผลลัพธ์ที่ได้จะเป็น__* 👇
```log
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS              PORTS                                                        NAMES
8b2232a77ac1   nginx     "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp, :::8080->8 
```

**3. ตรวจสอบว่า Container ที่สร้าง สามารถเข้าถึงได้หรือไม่**

เราสามารถเข้าถึงผ่าน Browser ได้โดยการเข้าที่ http://localhost:8080

หรือ สามารถเข้าถึงผ่านคำสั่ง `curl` ได้โดยการใช้คำสั่ง
```bash
curl http://localhost:8080
```
*__OUT: ผลลัพธ์ที่ได้จะเป็น__* 👇
```log
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```