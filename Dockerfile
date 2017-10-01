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
      && pip install -U airflow biopython bokeh cython csvkit docopt edward \
                        fbprophet feather-format flake8 ggplot jupyter keras \
                        lightgbm luigi mxnet pandas plotly psutil pymc pystan \
                        pytoml pyyaml scikit-learn scipy seaborn sphinx sympy \
                        tensorflow theano xgboost

ENTRYPOINT ["/usr/local/bin/python"]
