#!/bin/bash
docker run \
	-v /home/hugh/myshare/projects/ipynb:/opt/notebooks \
	--rm \
	-p 8888:8888 \
	-d \
	--name=conda \
	hugh/conda

docker logs conda -f
#xdg-open http://localhost:8888