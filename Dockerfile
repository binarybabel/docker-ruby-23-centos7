FROM centos/ruby-23-centos7

MAINTAINER BinaryBabel OSS <code-czar@binbab.org>

USER 0

RUN yum install -y --setopt=tsflags=nodocs file ImageMagick sshpass && \
    yum remove -y nodejs npm && \
    yum clean all -y

RUN curl -sL https://rpm.nodesource.com/setup_5.x | bash -

RUN yum install -y --setopt=tsflags=nodocs nodejs && \
    yum clean all -y

USER 1001
