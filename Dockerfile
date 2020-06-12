FROM squidfunk/mkdocs-material:5.1.0
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

COPY action.sh /action.sh

# Need GCC
RUN apk add build-base

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
