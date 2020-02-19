FROM jupyter/minimal-notebook:3deefc7d16c7

USER root

RUN apt-get update \
  && apt-get update && apt-get install -y --no-install-recommends \
  libboost-all-dev \
  && rm -rf /var/lib/apt/lists/*

RUN set -ex \
  && wget "http://sqlite.org/2017/sqlite-autoconf-3160200.tar.gz" \
  && tar xfz sqlite-autoconf-3160200.tar.gz \
  && cd sqlite-autoconf-3160200 \
  && ./configure \
  --disable-static \
  CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1  -DSQLITE_ENABLE_COLUMN_METADATA=1  -DSQLITE_ENABLE_UNLOCK_NOTIFY=1  -DSQLITE_SECURE_DELETE=1 -DSQLITE_ENABLE_DBSTAT_VTAB=1" \
  && make -j "$(nproc)" \
  && make install \
  && cd .. \
  && rm -rf sqlite-autoconf-3160200 \
  && rm sqlite-autoconf-3160200.tar.gz


RUN set -ex \
  && wget "https://cmake.org/files/v3.8/cmake-3.8.0-rc1.tar.gz" \
  && tar xvfz cmake-3.8.0-rc1.tar.gz \
  && cd cmake-3.8.0-rc1 \
  && ./configure \
  && make -j "$(nproc)" install \
  && cd .. \
  && rm -rf cmake-3.8.0-rc1  \
  && rm cmake-3.8.0-rc1.tar.gz

RUN pip install -U pip \
  && pip install numpy --upgrade


RUN pip install alabaster \
  algopy \
  appdirs \
  argh \
  arrow \
  Babel \
  binaryornot \
  bleach \
  bolt-python \
  boto \
  brewer2mpl \
  bz2file \
  chardet \
  click \
  colorama \
  configparser \
  cookiecutter \
  coverage \
  cycler \
  Cython \
  dask \
  decorator \
  docutils \
  entrypoints \
  expecter \
  Flask \
  future \
  fuzzywuzzy \
  gdbn \
  gensim \
  ggplot \
  gister \
  gnumpy \
  graphviz \
  h5py \
  html5lib \
  httpretty \
  hyperopt \
  imagesize \
  ipykernel \
  ipython \
  ipython-genutils \
  ipywidgets \
  itsdangerous \
  jedi \
  Jinja2 \
  jinja2-time \
  joblib \
  jsonschema \
  jupyter \
  jupyter-client \
  jupyter-console \
  jupyter-core \
  jupyterlab \
  jupyterlab-launcher \
  Keras \
  langid \
  Lasagne \
  MarkupSafe \
  matplotlib \
  mistune \
  mxnet \
  nbconvert \
  nbformat \
  networkx \
  nltk \
  nolearn \
  nose \
  notebook \
  notebook-viewer \
  numba \
  numdifftools \
  numexpr \
  numpy \
  olefile \
  opencv-python \
  packaging \
  pandas \
  pandoc \
  pandocfilters \
  pathtools \
  patsy \
  pexpect \
  pickleshare \
  Pillow \
  plotly \
  ply \
  poyo \
  prompt-toolkit \
  protobuf \
  ptyprocess \
  py \
  py4j \
  pybind11 \
  pydicom \
  pydot \
  pydot-ng \
  pyemd 

RUN pip install Pygments \
  pymongo \
  Pympler \
  pyparsing \
  PyQt5 \
  pytest \
  python-can \
  python-dateutil \
  python-Levenshtein \
  python-termstyle \
  pytk \
  pytz \
  PyWavelets \
  PyYAML \
  pyzmq \
  qtconsole \
  reload \
  requests \
  scikit-image \
  scikit-learn \
  scipy \
  seaborn \
  serpent \
  simplegeneric \
  sip \
  six \
  sklearn \
  smart-open \
  sniffer \
  snowballstemmer \
  Sphinx \
  sphinx-rtd-theme \
  statsmodels \
  table \
  tables \
  tabulate \
  tensorflow \
  tensorflow-gpu \
  terminado \
  testpackage \
  testpath \
  Theano \
  thunder-python \
  thunder-registration \
  thunder-regression \
  tifffile \
  toolz \
  tornado \
  tqdm \
  traitlets \
  watchdog \
  wcwidth \
  webencodings \
  Werkzeug \
  whichcraft \
  widgetsnbextension \
  xgboost

##  
RUN set -ex \
  && git clone https://github.com/pybind/pybind11.git \
  && cd pybind11 \
  && python setup.py install


RUN set -ex \
  && wget "http://www.fftw.org/fftw-3.3.6-pl1.tar.gz" \
  && tar xfz fftw-3.3.6-pl1.tar.gz \
  && cd fftw-3.3.6-pl1 \
  \
  && ./configure \
  --enable-float \
  --enable-shared \
  && make -j "$(nproc)" \
  && make install \
  && make clean \
  \
  && ./configure \
  --enable-shared \
  && make -j "$(nproc)" \
  && make install \
  && make clean \
  \
  && ./configure \
  --enable-long-double \
  --enable-shared \
  && make -j "$(nproc)" \
  && make install \
  && make clean \
  \
  && cd .. \
  && rm -rf fftw-3.3.6-pl1 \
  && rm fftw-3.3.6-pl1.tar.gz

RUN set -ex \
  && wget "http://lappweb.in2p3.fr/virgo/FrameL/libframe-8.30.tar.gz" \
  && tar xfz libframe-8.30.tar.gz \
  && cd libframe-8.30 \
  && ./configure \
  && make -j "$(nproc)" \
  && make install \
  && cd .. \
  && rm -rf libframe-8.30 \
  && rm libframe-8.30.tar.gz

RUN set -ex \
  && wget "ftp://ftp.gnu.org/gnu/gsl/gsl-2.3.tar.gz" \
  && tar xfz gsl-2.3.tar.gz \
  && cd gsl-2.3 \
  && ./configure \
  && make -j "$(nproc)" \
  && make install \
  && cd .. \
  && rm -rf gsl-2.3 \
  && rm  gsl-2.3.tar.gz


USER $NB_UID
