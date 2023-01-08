# nginx-basic-auth-image

Nginx image used to simulate a microservice with mock basic auth.

**Not actively maintained, built for specific purpose, consumed only in the private Proof of Concept (POC).**

[.htpasswd](files/.htpasswd) values are `foo:bar`.

### Consumption

```shell
docker run --rm -p 8080:80 -d ghcr.io/aleksandar-babic/nginx-basic-auth-image:main
curl -u foo:bar http://127.0.0.1:8080
```
