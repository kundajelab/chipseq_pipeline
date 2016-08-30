#!/bin/bash

## conda environment name

ENV_NAME=aquas_chipseq
ENV_NAME_PY3=aquas_chipseq_py3

conda env remove --name ${ENV_NAME} -y
conda env remove --name ${ENV_NAME_PY3} -y
