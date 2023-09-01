FROM nginx
LABEL maintainer='SEHER'
RUN apt-get update
ADD static-website-example/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
