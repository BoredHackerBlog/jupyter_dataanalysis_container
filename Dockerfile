FROM ubuntu:20.04
RUN mkdir /notebook
RUN apt update
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y python3 python3-pip graphviz
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install matplotlib
RUN pip3 install scikit-learn
RUN pip3 install jedi==0.17.2
RUN pip3 install jupyterlab
RUN pip3 install graphviz
RUN rm -rf ~/.cache/pip/*
WORKDIR /notebook
ENTRYPOINT ["jupyter-lab","--allow-root","--no-browser","--ip=0.0.0.0"]
EXPOSE 8888/tcp
VOLUME ["/notebook"]
