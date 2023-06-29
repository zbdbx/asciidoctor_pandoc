
ARG ASCIIDOCTOR_IMAGE_VERSION=latest
FROM asciidoctor/docker-asciidoctor:${ASCIIDOCTOR_IMAGE_VERSION}
# WORKDIR /app

ARG PANDOC_VERSION=3.1.4
ARG PLATFORM=linux-amd64

ENV PANDOC_VERSION=${PANDOC_VERSION}
ENV PLATFORM=${PLATFORM}

#https://github.com/jgm/pandoc/releases/tag/3.1.4
# ADD https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz /app/

# 下载 pandoc 文件
# RUN curl -o pandoc-${PANDOC_VERSION}.tar.gz https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz
RUN mkdir /app \
 && wget -O /app/pandoc-${PANDOC_VERSION}.tar.gz https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz \
 && tar -xvf /app/pandoc-${PANDOC_VERSION}.tar.gz -C /app \
 && rm -rf /app/pandoc-${PANDOC_VERSION}.tar.gz \
 && mv /app/pandoc-${PANDOC_VERSION} /app/pandoc \
 && ln -s /app/pandoc/bin/pandoc /usr/bin/pandoc

# 查看解压后的文件列表
# RUN ls /app
