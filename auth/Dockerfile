FROM nginx:latest

ENV USERNAME admin
ENV PASSWORD admin

COPY entrypoint.sh /

ENTRYPOINT ["./entrypoint.sh"]

CMD nginx -g "daemon off;"