FROM gitea/act_runner:latest

ENV FREEMARKER_VERSION=2.3.28

RUN apk add --update \
    openjdk17-jre-headless openssh-client sshpass curl && \
    rm -rf /var/cache/apk/* && \
    cd /opt && \
    curl --silent -L http://prdownloads.sourceforge.net/fmpp/fmpp_0.9.16.tar.gz | tar zxf - 
    # && \
    #curl --silent -L https://repo1.maven.org/maven2/org/freemarker/freemarker/${FREEMARKER_VERSION}/freemarker-${FREEMARKER_VERSION}.jar -o fmpp/lib/freemarker.jar

#ENTRYPOINT ["fmpp/bin/fmpp"]
