# Create project directory
mkdir jupyter-data-analysis-toolkit
cd jupyter-data-analysis-toolkit

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install dependencies
uv venv --python 3.11
source .venv/bin/activate
uv pip install pandas polars numpy tensorflow

# Start Jupyter
uv run --with jupyter jupyter lab
