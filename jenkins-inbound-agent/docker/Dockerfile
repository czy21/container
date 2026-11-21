FROM alpine/curl AS builder
USER root

RUN curl -fsSL https://get.helm.sh/helm-v4.3.1-linux-amd64.tar.gz | tar -zxf - --strip-components 1 -C /root linux-amd64/helm

FROM jenkins/inbound-agent:3396.ve02b_5cde31b_2-1-jdk25

USER root

COPY --from=builder /root/helm /usr/local/bin/helm

RUN chown root:root /usr/local/bin/helm && chmod +x /usr/local/bin/helm
RUN ln -sf /usr/local/bin/helm /usr/bin/helm