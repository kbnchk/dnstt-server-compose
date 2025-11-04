# dnstt-server-compose

docker-compose.yaml for [dnstt server](https://www.bamsoftware.com/software/dnstt/)

`build` directory contains Dockerfile and docker-entrypoint.sh for building docker image from official repo
`docker-compose.yaml` uses prebuilt image `ghcr.io/kbnchk/dnstt-server:latest`

## Usage:
- follow instructions from https://www.bamsoftware.com/software/dnstt/ to create your NS zone
- clone repo and replace `<YOUR_DNS_ZONE_HERE>` in `docker-compose.yaml` with your zone
- ```docker compose up -d```
- get generated pubkey from `docker compose logs` and configure client