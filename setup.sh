#!/bin/bash

echo "Setting up battery-foundation-model repository structure..."

# Data folders (one per EIS dataset)
mkdir -p data/lp503562 data/zhang2020 data/nasa data/cassino-lfp data/samsung-icr18650 data/libforsecuse
touch data/lp503562/.gitkeep data/zhang2020/.gitkeep data/nasa/.gitkeep
touch data/cassino-lfp/.gitkeep data/samsung-icr18650/.gitkeep data/libforsecuse/.gitkeep
echo "✓ Data folders created"

# Notebooks
mkdir -p notebooks
touch notebooks/01_lp503562_eda.ipynb
echo "✓ Notebooks folder created"

# Source code
mkdir -p src/data_pipeline src/models src/evaluation
touch src/data_pipeline/.gitkeep src/models/.gitkeep src/evaluation/.gitkeep
echo "✓ Source code folders created"

# Experiments
mkdir -p experiments
touch experiments/.gitkeep
echo "✓ Experiments folder created"

# Docs
mkdir -p docs/dataset_cards
touch docs/model_card.md docs/dataset_cards/.gitkeep
echo "✓ Docs folder created"

# Root placeholder files
touch CONTRIBUTING.md
touch data/README.md
echo "✓ Root placeholder files created"

echo ""
echo "All done! Run: git add . && git commit -m 'feat: set up repository structure' && git push origin main"