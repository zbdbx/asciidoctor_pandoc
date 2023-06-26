
ARG ASCIIDOCTOR_IMAGE_VERSION=latest
FROM asciidoctor/docker-asciidoctor:${ASCIIDOCTOR_IMAGE_VERSION}

ARG PANDOC_VERSION=3.1.4
ARG PLATFORM=linux-amd64
#https://github.com/jgm/pandoc/releases/tag/3.1.4
ADD https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz /app/
RUN ls /app/
