#!/bin/bash
set -e  # Exit on error

echo "🔧 Updating system packages..."
apt-get update && apt-get upgrade -y

echo "📦 Installing core build tools..."
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

echo "🐍 Upgrading pip and setuptools..."
python3 -m pip install --upgrade pip setuptools wheel

echo "🤖 Installing common AI/ML libraries..."
python3 -m pip install --upgrade \
    numpy \
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

echo "✅ Post-create setup complete! Ready for AI development 🚀"
