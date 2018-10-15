FROM nvidia/cuda:9.0-cudnn7-runtime

ADD https://bootstrap.pypa.io/get-pip.py /tmp/get-pip.py

RUN set -e \
      && ln -sf /bin/bash /bin/sh

RUN set -e \
      && apt-get -y purge python3* \
      && apt-get -y update \
      && apt-get -y install software-properties-common \
      && add-apt-repository -y ppa:jonathonf/python-3.6 \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        apt-utils build-essential bzip2 ca-certificates curl fonts-liberation \
        g++ gcc gfortran git graphviz inkscape jed libatlas-base-dev \
        libblas-dev libbz2-dev libcurl4-gnutls-dev libfreetype6-dev \
        libgl1-mesa-glx libhdf5-dev libicu-dev liblapack-dev liblzma-dev \
        libncurses5-dev libpcre3-dev libpng12-dev libreadline-dev libsm6 \
        libxext-dev libxrender1 libz-dev libzmq3-dev lmodern locales netcat \
        openmpi-bin pandoc pkg-config python3.6-dev rsync sudo \
        texlive-fonts-extra texlive-fonts-recommended \
        texlive-generic-recommended texlive-latex-base texlive-latex-extra \
        texlive-xetex unzip wget zip zlib1g-dev \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && locale-gen en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN set -e \
      && ln -sf /usr/bin/python3.6 /usr/bin/python \
      && ln -sf /usr/bin/python3.6 /usr/bin/python3 \
      && /usr/bin/python3.6 /tmp/get-pip.py \
      && pip install -U --no-cache-dir numpy tensorflow-gpu \
      && pip install -U --no-cache-dir \
        ansible apache-libcloud awscli bcolz biopython bokeh cntk-gpu \
        cutadapt cython csvkit docopt fbprophet feather-format flake8 ggplot \
        h5py holoviews jupyter jupyter_contrib_nbextensions jupyterhub \
        jupyterlab jupyterthemes keras lightgbm luigi matplotlib mkl mock \
        mxnet nose notebook notedown numexpr pandas pandas-datareader pillow \
        pip plotly psutil pydot pymc pyopenssl pypdf2 pysam pystan pytest \
        pytoml pyyaml redis requests requests_oauthlib sabr scikit-learn \
        scipy selenium seaborn six sklearn-pandas sphinx statsmodels sympy \
        testfixtures torch torchvision tornado webtest xgboost xmltodict \
      && rm -f /tmp/get-pip.py

RUN set -e \
      && jupyter contrib nbextension install --system \
      && jt --theme oceans16 --toolbar --nbname --vimext

ENTRYPOINT ["/usr/bin/python"]
