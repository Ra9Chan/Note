#!/bin/zsh

# Prompt the user for the commit message and branch name
echo "Enter the commit message:"
read COMMIT_MESSAGE
echo "Enter the branch name (default: main):"
read BRANCH
BRANCH=${BRANCH:-main}

# Push changes to the specified branch on the origin remote
echo "Pushing changes to origin/${BRANCH}..."
git add .
git commit -m "${COMMIT_MESSAGE}"
git push origin ${BRANCH}
