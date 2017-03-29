FROM elasticsearch:5.2

WORKDIR /usr/share/elasticsearch
RUN bin/elasticsearch-plugin install analysis-morphology -url http://dl.bintray.com/content/imotov/elasticsearch-plugins/org/elasticsearch/elasticsearch-analysis-morphology/5.3.0/elasticsearch-analysis-morphology-5.3.0.zip
RUN bin/elasticsearch-plugin install royrusso/elasticsearch-HQ

COPY ./config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
