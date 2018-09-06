FROM alpine:latest

RUN apk update

RUN apk add \
    bash \
    unzip \
    ca-certificates \
    ansible \
    terraform

# Install terraform inventory
RUN cd /tmp && \
    wget https://github.com/adammck/terraform-inventory/releases/download/v0.6.1/terraform-inventory_v0.6.1_linux_amd64.zip -O inventory.zip && \
    unzip inventory.zip && \
    mv terraform-inventory /usr/local/bin/
