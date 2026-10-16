FROM alpine/curl AS builder
USER root

RUN curl -fsSL https://get.helm.sh/helm-v4.2.4-linux-amd64.tar.gz | tar -zxf - --strip-components 1 -C /root linux-amd64/helm

FROM jenkins/inbound-agent:3391.va_37fa_a_305d6d-5-jdk25

USER root

COPY --from=builder /root/helm /usr/local/bin/helm

RUN chown root:root /usr/local/bin/helm && chmod +x /usr/local/bin/helm
RUN ln -sf /usr/local/bin/helm /usr/bin/helm