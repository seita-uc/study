FROM ubuntu:16.04
LABEL Maintainer="Seita Uchimura <c201552k@gmail.com>"

RUN apt update
RUN apt install -y nginx vim net-tools
RUN apt install -y tcpdump traceroute iputils-ping
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
