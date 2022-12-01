FROM quay.io/pypa/manylinux2010_x86_64

ENV PYTHONHOME=/opt/python/cp310-cp310

COPY . /src/

RUN cd /src/linux && make python

RUN mkdir /output && /opt/python/cp310-cp310/bin/pip wheel /src/SuffixTreePy -w /output
