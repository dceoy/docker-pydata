FROM python:latest

RUN set -e \
      && ln -sf /bin/bash /bin/sh

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        apt-utils gfortran liblapack-dev p7zip-full pbzip2 pigz \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && pip install -U --no-cache-dir numpy \
      && pip install -U --no-cache-dir \
        ansible apache-libcloud awscli bcolz biopython bokeh cutadapt cython \
        csvkit docopt fbprophet feather-format flake8 ggplot h5py holoviews \
        jupyter jupyter_contrib_nbextensions jupyterhub jupyterlab \
        jupyterthemes keras lightgbm luigi matplotlib mkl mock nose notebook \
        notedown numexpr pandas pandas-datareader pillow pip plotly psutil \
        pydot pymc pyopenssl pypdf2 pysam pystan pytest pytoml pyyaml redis \
        requests requests_oauthlib sabr scikit-learn scipy selenium seaborn \
        six sklearn-pandas sphinx statsmodels sympy testfixtures tornado \
        webtest xgboost xmltodict

RUN set -e \
      && jupyter contrib nbextension install --system \
      && jt --theme oceans16 --toolbar --nbname --vimext

ENTRYPOINT ["/usr/local/bin/python"]
