FROM elenacuoco/env_image:2.0.0-jlab

USER root
# get the previews gcc
RUN apt-get update && apt install software-properties-common && \
  add-apt-repository ppa:ubuntu-toolchain-r/test && \
  apt install -y gcc-5 g++-5 && \
  update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 90 --slave /usr/bin/g++ g++ /usr/bin/g++-5 --slave /usr/bin/gcov gcov /usr/bin/gcov-5


# Set environment
ENV ENV_ROOT /usr/local
ENV PATH /usr/local/:/usr/local/lib:/usr/local/include:/usr/local/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/lib:${LD_LIBRARY_PATH}

RUN set -ex \
  && git clone https://github.com/elenacuoco/p4TSA \ 
  && cd p4TSA \
  && cmake CMakeLists.txt \
  && make -j "$(nproc)" \
  && make install \
  && cd python-wrapper \
  && python setup.py  install \
  && cd ../../ \
  && rm -fr p4TSA \
  && /sbin/ldconfig


USER $NB_UID
