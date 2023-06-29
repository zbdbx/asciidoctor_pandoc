export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
export DOCKER_HOST=192.168.10.10

docker build -t asciidoctor_pandoc \
    --platform linux/amd64 \
    --build-arg PLATFORM=linux-amd64 \
    --build-arg PANDOC_VERSION=3.1.4 \
    --build-arg ASCIIDOCTOR_IMAGE_VERSION=latest \
    .

# docker push assicdoctor_pandoc

# pdf字体：
# asciidoctor-pdf -a pdf-style=theme.yml -a pdf-fontsdir=/data/fonts test.adoc
# NotoSansCJK-Regular.ttc   NotoSerifCJK-Regular.ttc
# /usr/lib/ruby/gems/3.2.0/gems/asciidoctor-pdf-2.3.8/data/fonts
# /usr/share/fonts


#asciidoctor-pdf --theme /data/resources/themes/chinese-font-theme.yml -a pdf-fontsdir=/data/resources/fonts pvh-${version}.adoc