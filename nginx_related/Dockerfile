# FROM nginx:1.21.6-alpine
# RUN apk del zip
#COPY nginx_related/index.html /usr/share/nginx/html/


FROM alpine:3.15.4
RUN apk add --update --no-cache nginx && \
	mkdir /home/app-user && adduser -h /home/app-user -s /bin/sh -D app-user && \
	chown -R app-user:app-user /home/app-user && \
	chown -R app-user:app-user $(find ./ -name nginx) 
	# sed -i 's/user nginx;/#user app-user;/g' /etc/nginx/nginx.conf
	
WORKDIR /home/app-user

COPY index.html /usr/share/nginx/html/.
COPY nginx.conf /usr/share/nginx/mine.conf

USER	app-user 

# CMD ["nginx"]

CMD ["/usr/sbin/nginx", "-c", "/usr/share/nginx/mine.conf"]