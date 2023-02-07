FROM continuumio/anaconda3:2022.05
RUN apt-get update && apt-get install -y graphviz \ 
    && git clone https://github.com/OBInvest/drecvm.git --branch=v2.1 /opt/drecvm \
    && conda env create -f /opt/drecvm/environment.yml -q
RUN echo "conda activate drecvmenv" >> ~/.bashrc
SHELL ["/bin/bash", "--login", "-c"]
EXPOSE 8888
CMD jupyter notebook --notebook-dir=/opt/drecvm --ip='*' --NotebookApp.token='' --NotebookApp.password='' --port=8888 --no-browser --allow-root

