#!/bin/bash

echo "Starting dotfiles bootstrap..."

# 1. Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Run Brewfile bundle
echo "Running brew bundle..."
brew bundle install --file=./Brewfile

# 3. Setup Shell Config
echo "Updating .zshrc..."
cp .zshrc ~/.zshrc

# 4. Global NPM/Bun tools
echo "Installing CLIs..."
npm install -g @google/gemini-cli
# Add OpenClaw or others here if npm-based.

# 5. Clone Project Repos
echo "Cloning projects from thevibecoder/projects/self..."
PROJECTS_DIR="$HOME/thevibecoder/projects/self"
mkdir -p "$PROJECTS_DIR"

# List of repos to clone (Add all your repos here)
REPOS=(
  "ayush-vault"
  "project-showcase-skill"
)

for repo in "${REPOS[@]}"; do
    if [ ! -d "$PROJECTS_DIR/$repo" ]; then
        echo "Cloning $repo..."
        gh repo clone "thevibecoder/$repo" "$PROJECTS_DIR/$repo"
    else
        echo "$repo already exists, skipping."
    fi
done

echo "Bootstrap complete! Restart your shell."
