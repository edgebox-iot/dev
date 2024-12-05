FROM nginx

ADD src/build/nginx.conf /etc/nginx/nginx.conf
ADD src/build/runner /bin/runner

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stdout /var/log/nginx/error.log

EXPOSE 80

CMD ["/bin/runner"]