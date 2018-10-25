FROM dceoy/tensorflow:cpu

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        gfortran openmpi-bin \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && pip install -U --no-cache-dir \
        ansible apache-libcloud autopep8 awscli bash_kernel bcolz biopython \
        bokeh cntk cutadapt cython csvkit docopt fbprophet feather-format \
        flake8 ggplot h5py holoviews jupyter jupyter_contrib_nbextensions \
        jupyterhub jupyterlab jupyterthemes keras lightgbm luigi matplotlib \
        mkl mock mxnet nose notebook notedown numexpr numpy pandas \
        pandas-datareader pillow pip plotly psutil pydot pymc pyopenssl \
        pypdf2 pysam pystan pytest pytoml pyyaml redis requests \
        requests_oauthlib sabr scikit-learn scipy selenium seaborn six \
        sklearn-pandas sphinx statsmodels sympy tensorflow testfixtures torch \
        torchvision tornado tqdm webtest xgboost xmltodict

ENTRYPOINT ["/usr/local/bin/python"]
