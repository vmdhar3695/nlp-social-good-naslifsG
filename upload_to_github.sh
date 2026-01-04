#!/bin/bash
# ================================================================
# 🚀 NASLIF-SG GitHub Auto Upload Script
# Author: vmdhar3695
# Project: NeuroSymbolic Adaptive Language Framework for Social Good
# ================================================================

# --- CONFIGURATION ---
GITHUB_USER="vmdhar3695"
REPO_NAME="nlp-social-good-naslifsG"
BRANCH="main"
REMOTE_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

# --- COLORS ---
GREEN="\\033[0;32m"
YELLOW="\\033[1;33m"
NC="\\033[0m" # No Color

echo -e "${GREEN}🚀 Starting NASLIF-SG GitHub Upload Process...${NC}"

# --- STEP 1: Initialize Git if not already ---
if [ ! -d ".git" ]; then
  echo -e "${YELLOW}Initializing local git repository...${NC}"
  git init
  git branch -M ${BRANCH}
else
  echo -e "${YELLOW}Git repository already initialized.${NC}"
fi

# --- STEP 2: Add and Commit all Files ---
echo -e "${YELLOW}Staging all project files...${NC}"
git add .

echo -e "${YELLOW}Creating commit...${NC}"
git commit -m "Initial NASLIF-SG project upload with README, setup.py, and dataset structure"

# --- STEP 3: Add Remote and Push ---
if git remote | grep -q "origin"; then
  echo -e "${YELLOW}Remote origin already exists. Skipping add...${NC}"
else
  echo -e "${YELLOW}Adding remote repository...${NC}"
  git remote add origin ${REMOTE_URL}
fi

echo -e "${GREEN}Pushing project to GitHub...${NC}"
git push -u origin ${BRANCH}

echo -e "${GREEN}✅ Upload complete! Repository successfully pushed to:${NC}"
echo -e "${YELLOW}🔗 ${REMOTE_URL}${NC}"

# --- STEP 4: Summary ---
echo -e \"\\n${GREEN}✨ NASLIF-SG Repository Details:${NC}\"
echo -e \"📂 Repo Name: ${REPO_NAME}\"
echo -e \"👤 GitHub User: ${GITHUB_USER}\"
echo -e \"🌐 Repo URL: ${REMOTE_URL}\"
echo -e \"✅ Branch: ${BRANCH}\"
echo -e \"💡 Next Steps:\"
echo -e \"   - Visit: ${REMOTE_URL}\"
echo -e \"   - Add datasets in /data folder as per structure\"
echo -e \"   - Continue development with 'git add . && git commit -m \\\"update\\\" && git push'\\n\"
