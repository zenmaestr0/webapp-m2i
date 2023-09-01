FROM nginx
LABEL maintainer='SEHER'
RUN apt-get update && apt-get install git -y
WORKDIR /tmp
RUN git clone https://github.com/diranetafen/static-website-example.git
RUN rm -rf /usr/share/nginx/html/*
RUN cp -r  /tmp/static-website-example/* /usr/share/nginx/html/
#ADD static-website-example/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
