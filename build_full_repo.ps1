# build_full_repo.ps1  –  adds IEEE-Standard files
New-Item -ItemType Directory -Force -Path data,configs,docs,docs\figures,tests,notebooks,results,.github\workflows | Out-Null

@"
id,domain,text,sentiment,label
1,healthcare,"AI-based triage reduced wait time in rural clinics.",positive,health_equity
2,governance,"Open data initiatives improve transparency.",positive,governance
3,ethics,"Language bias detection remains a key challenge.",neutral,ethics
4,education,"Adaptive tutoring systems enhance learner outcomes.",positive,education
5,media,"Social networks still struggle with misinformation.",negative,media
"@ | Out-File -Encoding utf8 data\example_socialgood.csv

# YAML configs
@"
training:
  epochs: 10
  batch_size: 8
  learning_rate: 3e-5
ethics:
  bias_threshold: 0.05
"@ | Out-File -Encoding utf8 configs\base_config.yaml

# Quick-start notebook placeholder
@"
# Quick Start – NASLIF-SG IEEE Edition
import pandas as pd
print(pd.read_csv('data/example_socialgood.csv').head())
"@ | Out-File -Encoding utf8 notebooks\quick_start.ipynb

# GitHub Actions CI
@"
name: CI
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.9'
      - run: pip install -r requirements.txt
      - run: pytest
"@ | Out-File -Encoding utf8 .github\workflows\ci.yml

# Placeholder IEEE PDF
"PDF placeholder for NASLIF-SG_Paper.pdf (generate later)" | Out-File -Encoding utf8 docs\NASLIF-SG_Paper.pdf

Write-Host "✅ IEEE-Standard repository structure complete."
