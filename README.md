# docker-http-auth

## Push to hub.docker.com

`docker build -t jelgblad/http-auth .`
`docker push jelgblad/http-auth`

## How to use

### docker-compose

This creates two containers. `auth` exposes port 80, adds HTTP "Basic" authentication and proxies everyting to port 8080 on `myservice`.

```
version: "3.4"

services:
  auth:
    image: jelgblad/http-auth
    ports: 
      - 80:8080
    environment:
      AUTH_USERNAME: myusername
      AUTH_PASSWORD: mypassword
      PROXY_HOST: myservice
      PROXY_PORT: 8080
      
  myservice:
    image: nginx
```
