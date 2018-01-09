FROM continuumio/anaconda3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing && \
    apt-get upgrade -y

RUN conda update conda -y && \
    conda install -c conda-forge jupyterlab

ADD requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8888
CMD ["/bin/bash","-c","/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"]