#!/bin/bash

# Directory of the cloned repository
repo_dir=$(pwd)
git_templates_dir=/usr/share/git-core/templates/hooks
# Copy the pre-commit hook to the hooks directory
# cp "$repo_dir/pre-commit" "$repo_dir/~/usr/share/git-core/templates/hooks"
sudo cp "$repo_dir/pre-commit" "$git_templates_dir"
sudo chmod +x "$git_templates_dir/pre-commit"

# Copy the commit-msg hook to the hooks directory
sudo cp "$repo_dir/commit-msg" "$git_templates_dir"
sudo chmod +x "$git_templates_dir/commit-msg"

# Copy the pre-push hook to the hooks directory
sudo cp "$repo_dir/pre-push" "$git_templates_dir"
sudo chmod +x "$git_templates_dir/pre-push"

echo "Git hooks installed successfully!"
