FROM elenacuoco/env_image
ENV ENV_ROOT /usr/local
RUN set -ex \
  && git clone https://github.com/elenacuoco/p4TSA \ 
  && cd p4TSA \
  && cmake CMakeLists.txt \
  && make -j "$(nproc)" \
  && make install \
  && cd python-wrapper \
  && python setup.py  install \
  && cd ../../ \
  && rm -fr p4TSA

 CMD ["bash"]
 
