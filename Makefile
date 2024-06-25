




install-elasticsearch:
	docker network create elastic
	docker pull docker.elastic.co/elasticsearch/elasticsearch:8.13.4

run-elasticsearch:
	docker run --name elasticsearch --net elastic -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -t docker.elastic.co/elasticsearch/elasticsearch:8.13.4
