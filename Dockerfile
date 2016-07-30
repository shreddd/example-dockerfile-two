FROM andrewosh/binder-base

MAINTAINER Shreyas Cholia <scholia@lbl.gov>

USER root

EXPOSE 8888
EXPOSE 5000
EXPOSE 5001
EXPOSE 5002

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt
