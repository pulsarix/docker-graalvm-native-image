# docker-graalvm-native-image
Docker with Graalvm native image


# Check current version

```bash
docker run -ti pulsarix/graalvm-native-image:latest --version                            
GraalVM Version 20.0.0 CE
```

# Build native image

```Dockerfile
FROM alpine:3.7 as builder
WORKDIR /home/application
COPY build /home/application/build
RUN apk add zip

FROM pulsarix/graalvm-native-image:latest as graalvm
COPY --from=builder /home/application/ /home/application/
WORKDIR /home/application
RUN native-image --no-server -jar build/libs/*-all.jar
```

