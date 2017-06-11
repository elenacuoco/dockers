FROM elenacuoco/env_image

RUN set -ex \
  && git clone https://github.com/elenacuoco/p4TSA \ 
  && cd p4TSA \
  && cmake CMakeList.txt \
  && make -j "$(nproc)" \
  && make install \
  && cd python-wrapper \
  && python setup.py  install \
  && cd ../../ \
  && rm -fr p4TSA

 CMD ["bash"]
 