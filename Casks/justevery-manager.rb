cask "justevery-manager" do
  version "0.1.49"

  on_arm do
    sha256 "76d4460a43f1dfc618ec7eebbf904ac3fdf084b8e550e67a8be467a8ce907ab0"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.49/Every.Manager_0.1.49_aarch64.dmg"
  end

  on_intel do
    sha256 "d37753914d51bf684495f015cb17e08f014ba6e42358e8028e8987dfecda22b8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.49/Every.Manager_0.1.49_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
