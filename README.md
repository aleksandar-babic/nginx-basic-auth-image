# nginx-basic-auth-image

Nginx image used to simulate a microservice with mock basic auth.

**Not actively maintained, built for specific purpose, consumed only in the private Proof of Concept (POC).**

[.htpasswd](files/.htpasswd) values are `foo:bar`.

### Consumption

```shell
docker run --rm -p 8080:80 -d ghcr.io/aleksandar-babic/nginx-basic-auth-image:main
curl -u foo:bar http://127.0.0.1:8080
```

Besides `index.html`, the following sample files are also available:
1. 2MB MP4 video at `/2mb.mp4`
2. 10MB MP4 video at `/10mb.mp4`
3. 15MB MP4 video at `/15mb.mp4`
4. 126MB MP4 video at `/126mb.mp4`
> For example, run: `curl -u foo:bar http://127.0.0.1:8080/15mb.mp4`
