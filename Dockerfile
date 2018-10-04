FROM ubuntu:bionic
MAINTAINER Michael Schwarz <michael.schwarz91@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        software-properties-common && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        make \
        texlive-full \
        python3-matplotlib \
        python3-nose \
        python3-numpy \
        python3-pandas \
        python3-pygments \
        python3-scipy \
        python3-sympy \
        python3-seaborn \
        python-matplotlib \
        python-nose \
        python-numpy \
        python-pandas \
        python-pygments \
        python-scipy \
        python-sympy \
        python-seaborn \
        latexmk \
        biber \
        wget \
        curl \
        zenity \
        sudo \
        inkscape \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && wget https://raw.githubusercontent.com/aclements/latexrun/master/latexrun -O /usr/local/bin/latexrun \
    && chmod +x /usr/local/bin/latexrun
