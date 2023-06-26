export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
export DOCKER_HOST=192.168.10.10

docker build -t asciidoctor_pandoc \
    --platform linux/amd64 \
    --build-arg PLATFORM=linux-amd64 \
    --build-arg PANDOC_VERSION=3.1.4 \
    --build-arg ASCIIDOCTOR_IMAGE_VERSION=latest \
    .

# docker push assicdoctor_pandoc