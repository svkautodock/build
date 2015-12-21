FROM cloudofsvk/ubuntu:UB_14.04_Base_SVK
MAINTAINER SVK
RUN apt-get update
RUN apt-get install -y vim wget net-tools 
RUN apt-get install -y openssh-server
RUN useradd svkdock && (echo "12345";echo "12345")|passwd svkdock
RUN service ssh restart
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
