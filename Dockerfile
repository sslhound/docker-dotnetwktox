FROM microsoft/dotnet:1.1.1-runtime

RUN apt-get update && \
  apt-get -y install fontconfig libfreetype6 libx11-6 libxext6 libxrender1 && \
  apt-get clean

ADD wkhtmltox-0.12.4_linux-generic-amd64.tar.xz /opt/
RUN ln -s /opt/wkhtmltox/bin/* /usr/local/bin/
