# jupyter_dataanalysis_container
jupyter docker container for data analysis

# usage
- clone the repo `git clone https://github.com/BoredHackerBlog/jupyter_dataanalysis_container`
- run `cd jupyter_dataanalysis_container`
- run `docker build -t jupyterdata .`
- run `docker run -v /home/user/notebook:/notebook -p 8888:8888 jupyterdata:latest`
- visit the url that's printed in your browser

/home/user/notebook will have your data.
