docker-compose build kong
docker-compose up -d kong-db
docker-compose run --rm kong kong migrations bootstrap
docker-compose run --rm kong kong migrations up
docker-compose up -d kong
docker-compose ps
docker-compose up -d konga
sleep 2m
docker-compose up -d keycloak-db
docker-compose up -d keycloak
docker-compose up -d alertmanager
docker-compose up -d prometheus
docker-compose up -d grafana
docker-compose ps