# homelab
Repository for my homelab containers and projects setup with docker containers

### Dependencies

- docker-compose: >= 2.20.0 (https://docs.docker.com/reference/compose-file/include/)

#### SSL Certificate generation

```bash
sudo certbot certonly --standalone -d DOMAIN_NAME1 -d DOMAIN_NAME2 --config-dir /etc/letsencrypt --work-dir /var/lib/letsencrypt --logs-dir /var/log/letsencrypt
```