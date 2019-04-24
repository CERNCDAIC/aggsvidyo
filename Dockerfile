FROM docker.elastic.co/logstash/logstash:6.6.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY logstash.yml /usr/share/logstash/config/logstash.yml
#ADD config/ /usr/share/logstash/pipeline/
#ADD config/ /usr/share/logstash/config/
ADD queries/ /usr/share/logstash/queries/
ADD cacerts/ /usr/share/logstash/cacerts/
