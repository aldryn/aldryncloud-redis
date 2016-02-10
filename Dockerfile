FROM redis:3.0-alpine

RUN apk add --no-cache gettext

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["redis-server", "-"]
