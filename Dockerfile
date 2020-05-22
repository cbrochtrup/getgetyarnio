from alpine:20200428

RUN apk update && apk add ffmpeg bash curl wget
COPY ["*.sh", "/"]

ENTRYPOINT ["bash", "./docker_entrypoint.sh"]