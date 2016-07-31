FROM singularities/spark

RUN apt-get update --fix-missing
RUN apt-get install -y gfortran
RUN apt-get install -y python-pip
RUN apt-get install -y python-dev
RUN apt-get install -y python-numpy 
RUN apt-get install -y python-scipy
RUN apt-get install -y python-pandas

RUN pip install scikit-learn
RUN pip install jupyter

# Copy custom scripts
COPY bin/notebook /opt/spark-docker/bin



