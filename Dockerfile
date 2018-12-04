FROM centos:centos6
LABEL maintainer="y-okubo"

ADD ./glusterd.sh /
RUN chmod +x /glusterd.sh \
 && yum -y update \
 && yum -y install acl \
 && yum -y install centos-release-gluster312 \
 && yum -y install glusterfs-server
CMD ["/glusterd.sh"]