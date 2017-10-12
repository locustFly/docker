# Version:0.0.1
FROM hub.c.163.com/library/centos:latest
MAINTAINER yinlei "748610636@qq.com"
RUN yum update  -y
RUN touch /etc/yum.repos.d/nginx.repo && echo "[nginx]" >/etc/yum.repos.d/nginx.repo && echo "name=nginx repo" >> /etc/yum.repos.d/nginx.repo 
RUN echo "baseurl=http://nginx.org/packages/centos/7/\$basearch/" >>/etc/yum.repos.d/nginx.repo && echo "gpgcheck=0" >>/etc/yum.repos.d/nginx.repo && echo "enabled=1" >> /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx
RUN echo "Hi,I am in your container"\
>/usr/share/nginx/html/index.html
EXPOSE 80
