FROM ubuntu

ENV FREEMARKER_VERSION=2.3.28

RUN export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    ln -s /bin/bash /sh && \
    apt-get update && \
    apt-get -y install openjdk-16-jre openssh-client sshpass curl && \
    curl --silent -L http://prdownloads.sourceforge.net/fmpp/fmpp_0.9.16.tar.gz | tar zxf - && \
    curl --silent -L https://repo1.maven.org/maven2/org/freemarker/freemarker/${FREEMARKER_VERSION}/freemarker-${FREEMARKER_VERSION}.jar -o fmpp/lib/freemarker.jar

#ENTRYPOINT ["fmpp/bin/fmpp"]
