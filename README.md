# n8n-python

The easiest way to run Python Code (Native) on self-hosted n8n. Additional libraries like pandas are also available. You can add more in the "pip_requirements.txt". The compose file creates with podman (or docker) the Containers for n8n-server, traefik (currently as reverse proxy), the n8n-runners (Javascript & Python) and postgres (as database instead of sqlite). The first configuration is awful, so save some time with this and have fun with n8n!

1. git clone:
```
git clone https://github.com/stefanmaeder/n8n-python.git
```
2. create .env
```
cd n8n-python
nano .env
```

copy & paste this and edit some parts:
```
SUBDOMAIN=www
DOMAIN_NAME=example.com
GENERIC_TIMEZONE=Europe/Berlin
LETSENCRYPT_EMAIL=info@example.com
DATABASE_PASSWORD=myPasswordForTheDatabase
RUNNER_PASSWORD=myPasswordForTheRunner
```

3. set up containers

```
podman compose up --build
```

or

```
docker compose up --build
```
