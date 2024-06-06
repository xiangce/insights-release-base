FROM registry.access.redhat.com/ubi9/python-311

LABEL maintainer="xiangceliu@redhat.com"

USER 0

ADD https://certs.corp.redhat.com/certs/2015-IT-Root-CA.pem https://certs.corp.redhat.com/certs/2022-IT-Root-CA.pem /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust

USER releaser
