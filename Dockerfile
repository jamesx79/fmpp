FROM java:openjdk-8-jre-alpine

RUN apk --no-cache add curl openssh sshpass
RUN curl --silent -L http://prdownloads.sourceforge.net/fmpp/fmpp_0.9.16.tar.gz | tar zxf -
ENV FREEMARKER_VERSION=2.3.28
RUN curl --silent -L https://repo1.maven.org/maven2/org/freemarker/freemarker/${FREEMARKER_VERSION}/freemarker-${FREEMARKER_VERSION}.jar -o fmpp/lib/freemarker.jar

ENTRYPOINT ["fmpp/bin/fmpp"]
