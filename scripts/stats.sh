#!/bin/bash

USERNAME="frhndevweb"

DATA=$(curl -s https://api.github.com/users/$USERNAME)

REPOS=$(echo $DATA | jq .public_repos)
FOLLOWERS=$(echo $DATA | jq .followers)
FOLLOWING=$(echo $DATA | jq .following)

DATE=$(date)

cat > README.md <<EOF
# 🚀 GitHub Live Stats

Last Update: $DATE

## 👤 Profile
- Username: $USERNAME
- Public Repos: $REPOS
- Followers: $FOLLOWERS
- Following: $FOLLOWING

## ⚡ Automation
This README updates every **5 minutes** using GitHub Actions.

---
⭐ Auto generated developer dashboard
EOF
