FROM maven:3-jdk-8
MAINTAINER Dave Woodward <davidwoodwrd@hotmail.com>

RUN wget -P /opt https://bintray.com/artifact/download/business/maven/flyway-commandline-3.2.1-linux-x64.tar.gz && \
    cd /opt && \
    tar -xvf flyway-commandline-3.2.1-linux-x64.tar.gz && \
    rm flyway-commandline-3.2.1-linux-x64.tar.gz && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    wget -P /opt https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.5.zip && \
    unzip sonar-scanner-2.5.zip && \
    rm sonar-scanner-2.5.zip
    
    

ENV PATH $PATH:/opt/flyway-3.2.1:/opt/sonar-scanner-2.5/bin
ENV SONAR_RUNNER_HOME /opt/sonar-scanner-2.5
