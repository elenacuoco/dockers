FROM elenacuoco/env_image

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
  && rm -fr p4TSA
 CMD ["/sbin/ldconfig"]
 CMD ["bash"]
 
