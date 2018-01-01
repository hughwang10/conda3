FROM continuumio/anaconda3

RUN apt-get update --fix-missing

RUN \
	conda update conda -y

EXPOSE 8889
CMD ["/bin/bash","-c","/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8889 --no-browser --allow-root"]