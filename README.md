# n8n-python
All-in-one with python runner


1. git clone
2. create .env

.env
```
# DOMAIN_NAME and SUBDOMAIN together determine where n8n will be reachable from
# The top level domain to serve from
DOMAIN_NAME=example.com

# The subdomain to serve from
SUBDOMAIN=www

# The above example serve n8n at: https://n8n.example.com

# Optional timezone to set which gets used by Cron and other scheduling nodes
# New York is the default value if not set
GENERIC_TIMEZONE=Europe/Berlin

# The email address to use for the TLS/SSL certificate creation
SSL_EMAIL=info@example.com
SERVER_NAME=www.example.com
LETSENCRYPT_EMAIL=info@example.com
```
3. podman (or docker) compose
