# just-every/homebrew-tap

Unofficial tap for Code (terminal coding agent) and JustEvery Manager (desktop app).

## Usage

### Code CLI
```bash
brew tap just-every/tap
brew install code
```

### JustEvery Agent (Desktop App)
```bash
brew tap just-every/tap
brew install --cask just-every/tap/justevery-manager
```

## Updating

### Code Formula
- Regenerate the formula in the main repo:
  ```bash
  scripts/generate-homebrew-formula.sh
  ```
- Copy `Formula/Code.rb` into this tap at `Formula/Code.rb` and push a commit.

### Agent Cask
Manager cask updates are automated by the manager repo's `agent-release.yml` workflow when `agent-v*` tags are published. It generates `Casks/justevery-manager.rb` with per-arch sha256 values and pushes directly to this tap.

Manual update (if needed):
```bash
cd /path/to/manager/repo
gh release download agent-vX.Y.Z --repo just-every/manager --dir dist/agent-assets
node scripts/generate-agent-cask.mjs --version X.Y.Z --assets dist/agent-assets --out dist/homebrew/justevery-manager.rb
cp dist/homebrew/justevery-manager.rb /path/to/homebrew-tap/Casks/justevery-manager.rb
cd /path/to/homebrew-tap
git add Casks/justevery-manager.rb
git commit -m "chore(homebrew): bump justevery-manager cask to vX.Y.Z"
git push
```
