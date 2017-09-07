FROM python

RUN set -e \
      && ln -sf /bin/bash /bin/sh

RUN set -e \
      && apt-get -y update \
      && apt-get -y upgrade \
      && apt-get -y install gfortran liblapack-dev \
      && apt-get clean

RUN set -e \
      && pip install -U pip numpy \
      && pip install -U cython edward ggplot jupyter keras lightgbm mxnet pandas pymc pystan scikit-learn scipy seaborn sphinx sympy tensorflow theano xgboost

ENTRYPOINT ["python"]
