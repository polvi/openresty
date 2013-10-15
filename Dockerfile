#FROM base
#RUN apt-get install -y libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make wget
#WORKDIR /tmp/
#RUN wget http://openresty.org/download/ngx_openresty-1.4.2.9.tar.gz
#RUN tar -xzvf ngx_openresty-1.4.2.9.tar.gz
#WORKDIR /tmp/ngx_openresty-1.4.2.9
#RUN ./configure
#RUN make
#RUN make install
#RUN mkdir -p /app/logs /app/conf
#WORKDIR /app/
FROM coreos/openresty
ENV PATH /usr/local/openresty/nginx/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
EXPOSE 8080
ADD nginx.conf /app/conf/nginx.conf
CMD nginx -p /app/ -c conf/nginx.conf
