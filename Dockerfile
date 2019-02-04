FROM java:latest
RUN apt-get update && apt-get install libwebkitgtk-1.0.0 -y
RUN mkdir /pentaho
WORKDIR /pentaho
RUN wget https://svwh.dl.sourceforge.net/project/pentaho/Pentaho%208.2/client-tools/pdi-ce-8.2.0.0-342.zip
RUN unzip pdi-ce-8.2.0.0-342.zip
RUN rm pdi-ce-8.2.0.0-342.zip -f
COPY ./jtds-1.3.1.jar /pentaho/data-integration/lib
WORKDIR /pentaho/data-integration
CMD ["tail", "-f", "/dev/null"]
