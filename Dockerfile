FROM elasticsearch

WORKDIR /usr/share/elasticsearch
RUN bin/plugin -install analysis-morphology -url http://dl.bintray.com/content/imotov/elasticsearch-plugins/org/elasticsearch/elasticsearch-analysis-morphology/1.2.0/elasticsearch-analysis-morphology-1.2.0.zip
RUN bin/plugin -install royrusso/elasticsearch-HQ

COPY ./config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml