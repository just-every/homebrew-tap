cask "justevery-manager" do
  version "0.1.138"

  on_arm do
    sha256 "c8bba6e4c057bf83b10426db0bbc70fb6994885bb9e5cd6bf976e779f0ba48a9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.138/Every.Manager_0.1.138_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "bdfc7aced7dd17b2b5b9c676ee16f83cfe3fcf3ac58f59c04eaf0539ac2d15d4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.138/Every.Manager_0.1.138_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
