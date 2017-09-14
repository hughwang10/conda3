#!/bin/bash
docker run \
	-v /home/hugh/myshare/projects/ipynb:/opt/notebooks \
	--rm \
	-p 8888:8888 \
	-d \
	--name=conda3 \
	hugh/conda3

docker logs conda3 -f
#xdg-open http://localhost:8888