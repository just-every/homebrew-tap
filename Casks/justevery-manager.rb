cask "justevery-manager" do
  version "0.1.166"

  on_arm do
    sha256 "3859d6c5513388eac342dcdf421eac0e88c25cb695d1c0ed36731b1afb6468e9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.166/Every.Manager_0.1.166_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d0e9b9b08e03c75f0dd9eb8c88e8a058aa1cce0254bb965c0ee5938f5e2d0936"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.166/Every.Manager_0.1.166_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
