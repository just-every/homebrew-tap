cask "justevery-manager" do
  version "0.1.191"

  on_arm do
    sha256 "c62201f6fca52847837809661e7d396560abc308e25a857453248e1f7037b46c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.191/Every.Manager_0.1.191_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "22e49d1dfd48b45fa013a6449f8cbdbae78c89dbacc635a840f86f35b9693acc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.191/Every.Manager_0.1.191_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
