docker compose down --rmi all -v --remove-orphans
docker compose build --no-cache
docker compose up