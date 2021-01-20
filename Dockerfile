FROM ubuntu:20.04
RUN mkdir /notebook
RUN apt update
RUN apt install -y python3 python3-pip
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
COPY requirements.txt /tmp/
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install matplotlib
RUN pip3 install graphviz
RUN pip3 install scikit-learn
RUN pip3 install jupyterlab
RUN pip3 install --requirement /tmp/requirements.txt
RUN pip3 install fbprophet
RUN rm -rf ~/.cache/pip/*
WORKDIR /notebook
ENTRYPOINT ["jupyter-lab","--allow-root","--no-browser","--ip=0.0.0.0"]
EXPOSE 8888/tcp
VOLUME ["/notebook"]
