FROM continuumio/anaconda3

RUN \
	/opt/conda/bin/conda install jupyter -y --quiet

# RUN \
# 	pip install altair

EXPOSE 8888
CMD ["/bin/bash","-c","/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"]