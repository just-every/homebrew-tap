cask "justevery-manager" do
  version "0.1.98"

  on_arm do
    sha256 "7ff7deb5a2637ccd1f6aeb8c1ef77acbc4911e20a9c30b390681ef0019181dfd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.98/Every.Manager_0.1.98_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "83d8f842a2dadd304280644437c022faa3562f160bb67fd17776742d866e54f1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.98/Every.Manager_0.1.98_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
