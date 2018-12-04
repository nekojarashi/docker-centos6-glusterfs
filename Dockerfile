FROM centos:centos6
LABEL maintainer="y-okubo"

ADD ./glusterd.sh /

RUN chmod +x /glusterd.sh \
 && yum update -y \
 && yum -y install acl centos-release-gluster312 glusterfs-server
CMD ["/glusterd.sh"]