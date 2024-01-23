# nginx-for-openshift-testing

```bash
podman build -t patrick.artifactory.home.local/nginx/nginx:v1.0 .

podman login patrick.artifactory.home.local -u admin

podman push patrick.artifactory.home.local/nginx/nginx:v1.0
```