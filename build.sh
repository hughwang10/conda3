#--no-cache
docker image build -t hugh/conda .
docker rmi $(docker images -q --filter "dangling=true")
docker images