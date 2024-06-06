FROM registry.access.redhat.com/ubi9/python-311
USER root
RUN wget -O /etc/pki/ca-trust/source/anchors/RH-IT-Root-CA.crt https://certs.corp.redhat.com/certs/2015-IT-Root-CA.pem
RUN wget -O /etc/pki/ca-trust/source/anchors/2022-IT-Root-CA.pem https://certs.corp.redhat.com/certs/2022-IT-Root-CA.pem
