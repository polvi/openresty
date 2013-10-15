```
core@localhost /media/state/openresty $ git clone https://github.com/polvi/openresty.git
Cloning into 'openresty'...
remote: Counting objects: 7, done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 7 (delta 1), reused 7 (delta 1)
Unpacking objects: 100% (7/7), done.
core@localhost /media/state/openresty $ cd openresty/
core@localhost /media/state/openresty/openresty $ docker build .
Uploading context 61440 bytes
Step 1 : FROM coreos/openresty
 ---> c72954d32d15
Step 2 : ENV PATH /usr/local/openresty/nginx/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
 ---> Using cache
 ---> 39bad843f844
Step 3 : EXPOSE 8080
 ---> Using cache
 ---> 36225a4db151
Step 4 : ADD nginx.conf /app/conf/nginx.conf
 ---> 65a0d0d52078
Step 5 : CMD nginx -p /app/ -c conf/nginx.conf
 ---> Running in da964877261a
 ---> 4de9f085386f
Successfully built 4de9f085386f
core@localhost /media/state/openresty/openresty $ docker run -d 4de9f085386f
fe6b6fd674d5
core@localhost /media/state/openresty/openresty $ docker ps | grep fe6b6fd674d5
fe6b6fd674d5        4de9f085386f        /bin/sh -c nginx -p    8 seconds ago        Up 7 seconds        49169->8080         
core@localhost /media/state/openresty/openresty $ curl localhost:49169
<p>hello, world</p>
```
