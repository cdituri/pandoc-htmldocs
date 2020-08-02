FROM pandoc/latex:latest

RUN apk --no-cache add jq shellcheck

ADD pandoc.css /app/pandoc.css

ADD entrypoint.sh /app/entrypoint.sh

RUN shellcheck /app/entrypoint.sh || exit 1

WORKDIR /src

ENTRYPOINT ["/app/entrypoint.sh"]
