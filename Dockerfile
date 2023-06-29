
ARG ASCIIDOCTOR_IMAGE_VERSION=latest
FROM asciidoctor/docker-asciidoctor:${ASCIIDOCTOR_IMAGE_VERSION}
WORKDIR /app

ARG PANDOC_VERSION=3.1.4
ARG PLATFORM=linux-amd64
#https://github.com/jgm/pandoc/releases/tag/3.1.4
# ADD https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz /app/

# 下载 pandoc 文件
RUN curl -o pandoc-${PANDOC_VERSION}.tar.gz https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-${PLATFORM}.tar.gz

# 解压 pandoc 文件
RUN tar -xzf pandoc${PANDOC_VERSION}.tar.gz -C /app \
    && rm -rf pandoc${PANDOC_VERSION}.tar.gz \
    && mv pandoc${PANDOC_VERSION} pandoc

# 查看解压后的文件列表
RUN ls /app/pandoc
