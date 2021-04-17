#FROM goldenrat/platform:java8
#FROM platform:oraclejdk8
FROM frolvlad/alpine-oraclejre8
ENV JAVA_OPTS " -XX:+UnlockCommercialFeatures -XX:+FlightRecorder"
VOLUME /tmp
ADD Pomelo-Assignment-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'

ADD .fingerprint /.fingerprint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8080
