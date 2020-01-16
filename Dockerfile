FROM continuumio/anaconda3
COPY environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
RUN conda install scikit-learn
ADD . /singan
WORKDIR /singan
CMD bash
