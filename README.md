# nginx-for-openshift-testing

```bash
 # Build
podman build -t patrick.artifactory.home.local/nginx/nginx:v1.0 .

# Login to Image-Registry
podman login patrick.artifactory.home.local -u admin

# Push to Image-Registry
podman push patrick.artifactory.home.local/nginx/nginx:v1.0

# Run Container
podman run --name nginx1 -d --rm -p 9000:9000 patrick.artifactory.home.local/nginx/nginx:v1.0
podman run --name nginx2 -d --rm -p 80:9000 patrick.artifactory.home.local/nginx/nginx:v1.0
podman run --name nginx3 -d --rm -p 81:9000 patrick.artifactory.home.local/nginx/nginx:v1.0

# Test
curl http://localhost
curl http://localhost:81
curl http://localhost:9000
```