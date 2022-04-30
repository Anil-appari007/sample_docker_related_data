# FROM nginx:1.21.6-alpine
# COPY nginx_related/index.html /usr/share/nginx/html/


FROM alpine:3.15.4
RUN apk add --update --no-cache nginx && \
	mkdir /home/app-user && adduser -h /home/app-user -s /bin/sh -D app-user && \
	chown -R app-user:app-user /home/app-user
USER	app-user