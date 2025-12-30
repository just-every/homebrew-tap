cask "justevery-manager" do
  version "0.1.52"

  on_arm do
    sha256 "cec0c15e3cc7affca3b2e5d08e00951fcd7a9635a94ce68bb4ed1f6e1ba8c38a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.52/Every.Manager_0.1.52_aarch64.dmg"
  end

  on_intel do
    sha256 "9d2d6fbaa90d865626723c5cb1390bea03feb772864d9202289f7c0920fbc681"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.52/Every.Manager_0.1.52_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
