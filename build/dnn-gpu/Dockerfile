FROM dceoy/tensorflow:latest

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        g++ gfortran libbz2-dev liblapack-dev liblzma-dev make openmpi-bin \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && pip install -U --no-cache-dir numpy pip pystan \
      && pip install -U --no-cache-dir \
        apache-airflow apache-libcloud autopep8 awscli bash_kernel bcolz \
        biopython bokeh cutadapt cython csvkit docopt prophet \
        feather-format flake8 flake8-bugbear flake8-isort ggplot h5py \
        holoviews jupyter jupyter_contrib_nbextensions jupyterhub jupyterlab \
        jupyterthemes keras lightgbm luigi matplotlib mkl mock mxnet nose \
        notebook notedown numexpr pandas pandas-datareader pep8-naming \
        pillow plotly psutil pyarrow pydot pymc pyopenssl pypdf2 pysam \
        pytest pytoml pyyaml redis requests requests_oauthlib sabr \
        scikit-learn scipy selenium seaborn six sklearn-pandas sphinx \
        statsmodels sympy tensorflow testfixtures torch torchvision tqdm \
        webtest xgboost xmltodict

ENTRYPOINT ["/usr/local/bin/ipython"]
