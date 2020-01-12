docker run -d \
	-p 9200:9200 \
	-p 9300:9300 \
	-e ELASTIC_PASSWORD=elastictest \
  -v `pwd`/config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --restart always \
	--network elk \
	-v elasticsearch_data:/usr/share/elasticsearch/data \
	--name elasticsearch \
	elasticsearch:7.4.2
