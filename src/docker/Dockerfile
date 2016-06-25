FROM jetty:9.3-jre8

ADD . /
RUN java -jar "$JETTY_HOME/start.jar" --add-to-startd=jmx,jmx-remote,stats,plus,ext,debug


CMD ["java","-Djava.io.tmpdir=/tmp/jetty","-jar","/usr/local/jetty/start.jar", "--debug"]
