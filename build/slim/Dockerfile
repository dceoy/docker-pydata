FROM python:slim

RUN set -e \
      && ln -sf /bin/bash /bin/sh

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y autoremove \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        build-essential \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && pip install -U --no-cache-dir numpy \
      && pip install -U --no-cache-dir \
        flake8 ggplot jupyter jupyter_contrib_nbextensions jupyterthemes \
        lightgbm matplotlib pandas pandas-datareader pip psutil pystan \
        scikit-learn scipy seaborn sklearn-pandas statsmodels xgboost

RUN set -e \
      && jupyter contrib nbextension install --system \
      && jt --theme oceans16 --toolbar --nbname --vimext

ENTRYPOINT ["/usr/local/bin/python"]
