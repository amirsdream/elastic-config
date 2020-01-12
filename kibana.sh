docker run -d \
  -p 5601:5601 \
  -e elasticsearch.hosts:"http://elasticsearch.com:9200" \
  -v `pwd`/config/kibana.yml:/usr/share/kibana/config/kibana.yml \
  --restart always \
  --network elk \
  --name kibana \
  docker.elastic.co/kibana/kibana:7.4.2
