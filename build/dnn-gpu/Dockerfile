FROM dceoy/tensorflow:latest

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        g++ gfortran locales openmpi-bin \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && locale-gen en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN set -e \
      && pip install -U --no-cache-dir \
        ansible apache-libcloud autopep8 awscli bash_kernel bcolz biopython \
        bokeh cutadapt cython csvkit docopt fbprophet feather-format flake8 \
        flake8-bugbear flake8-isort ggplot h5py holoviews jupyter \
        jupyter_contrib_nbextensions jupyterhub jupyterlab jupyterthemes \
        keras lightgbm luigi matplotlib mkl mock mxnet nose notebook notedown \
        numexpr numpy pandas pandas-datareader pep8-naming pillow pip plotly \
        psutil pyarrow pydot pymc pyopenssl pypdf2 pysam pystan pytest pytoml \
        pyyaml redis requests requests_oauthlib sabr scikit-learn scipy \
        selenium seaborn six sklearn-pandas sphinx statsmodels sympy \
        tensorflow-gpu testfixtures torch torchvision tornado tqdm webtest \
        xgboost xmltodict

ENTRYPOINT ["/usr/bin/python"]
