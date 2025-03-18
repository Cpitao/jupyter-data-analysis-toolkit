#!/bin/bash

# Set default directory name
default_dir="jupyter-data-analysis-toolkit"

# Check if directory name is provided as an argument
if [ $# -eq 0 ]; then
    echo "No directory name provided. Using default: $default_dir"
    project_dir="$default_dir"
else
    project_dir="$1"
fi

# Create project directory
mkdir "$project_dir"
cd "$project_dir"

# Check if uv is already installed
if ! command -v uv &> /dev/null; then
    echo "uv is not installed. Installing now..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH=$PATH:~/.local/bin
else
    echo "uv is already installed."
fi

# Install dependencies
uv venv --python 3.11
source .venv/bin/activate
uv pip install pandas polars numpy

# Start Jupyter
uv run --with jupyter jupyter lab
