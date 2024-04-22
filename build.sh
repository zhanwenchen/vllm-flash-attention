#!/bin/bash

eval "$(conda shell.bash hook)"

PYTORCH_VERSION="2.2.1"

for PYTHON_VERSION in 38 39 310 311; do
    source ~/.bashrc;
    conda activate vllm-flash-py${PYTHON_VERSION};
    conda env list;
    pip install packaging ninja;
    pip install torch==${PYTORCH_VERSION};
    time python setup.py bdist_wheel --dist-dir=dist;
done
