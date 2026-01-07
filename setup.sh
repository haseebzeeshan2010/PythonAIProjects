#!/bin/bash
set -e  # Exit on error

# update/upgrade
apt-get update && apt-get upgrade -y

# install essential packages
apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    pkg-config \
    python3 \
    python3-pip \
    python3-venv

# upgrade pip and setuptools(dependency of pip)
python3 -m pip install --upgrade pip setuptools wheel

# install AI/ML libraries
python3 -m pip install --upgrade \
    "numpy>=2.0,<2.3" \
    pandas \
    scikit-learn \
    matplotlib \
    seaborn \
    jupyterlab \
    torch torchvision torchaudio \
    tensorflow \
    transformers \
    accelerate \
    datasets

# install computer vision libraries
python3 -m pip install --upgrade \
    opencv-python \
    opencv-contrib-python \
    scikit-image