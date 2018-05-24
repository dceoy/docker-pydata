FROM python:latest

RUN set -e \
      && ln -sf /bin/bash /bin/sh

RUN set -e \
      && apt-get -y update \
      && apt-get -y upgrade \
      && apt-get -y install gfortran liblapack-dev \
      && apt-get -y autoremove \
      && apt-get clean

RUN set -e \
      && pip install -U --no-cache-dir numpy \
      && pip install -U --no-cache-dir \
        ansible apache-airflow apache-libcloud awscli biopython bokeh \
        cutadapt cython csvkit docopt fbprophet feather-format flake8 ggplot \
        holoviews jupyter jupyter_contrib_nbextensions jupyterthemes keras \
        lightgbm luigi matplotlib mock mxnet nose notedown numexpr pandas \
        pandas-datareader pip plotly psutil pymc pyopenssl pypdf2 pysam \
        pystan pytest pytoml pyyaml redis requests requests_oauthlib sabr \
        scikit-learn scipy selenium seaborn sphinx statsmodels sympy \
        tensorflow testfixtures tornado webtest xgboost xmltodict

RUN set -e \
      && jt --theme oceans16 --toolbar --nbname --vimext

ENTRYPOINT ["/usr/local/bin/python"]
