FROM continuumio/anaconda3:2022.05
RUN apt-get update && apt-get install -y graphviz \ 
    && git clone https://github.com/drecvm/drecvm.git /opt/drecvm \
    && conda env create -f /opt/drecvm/environment.yml -q 
EXPOSE 8888
ENTRYPOINT ["conda", "run", "-n", "drecvmenv", "jupyter", "notebook", "--notebook-dir=/opt/drecvm", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''", "--port=8888", "--no-browser", "--allow-root"]
