FROM buildpack-deps:focal

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    mysql-server-8.0 \
    openjdk-17-jdk \
  && rm -rf /var/lib/apt/lists/* \
  && wget https://services.gradle.org/distributions/gradle-7.5.1-bin.zip -P /tmp \
  && unzip -d /opt/gradle /tmp/gradle-7.5.1-bin.zip && rm /tmp/gradle-7.5.1-bin.zip

ENV PATH=$PATH:/opt/gradle/gradle-7.5.1/bin
