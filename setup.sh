# Create project directory
mkdir jupyter-data-analysis-toolkit
cd jupyter-data-analysis-toolkit
echo "3.11" > python.version

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install dependencies
uv venv
source .venv/bin/activate
uv pip install pandas polars numpy tensorflow

# Start Jupyter
uv run --with jupyter jupyter lab
