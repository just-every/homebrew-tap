cask "justevery-manager" do
  version "0.1.198"

  on_arm do
    sha256 "1f1df3f63e6418d93e408882d4f2a69f3af0e7d3389e1584d449dd4a33f2d209"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.198/Every.Manager_0.1.198_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d2a4f4753520898c70b7485262619c5dd201353190274bc6aafaf392d9bb980a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.198/Every.Manager_0.1.198_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
