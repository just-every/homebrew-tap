cask "justevery-manager" do
  version "0.1.143"

  on_arm do
    sha256 "7ba7160f2a677c8400816b6571995478317151d70b1aac8b49eed8f91b29f104"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.143/Every.Manager_0.1.143_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "fb33b9ab29b372dc3a1954a3563a9931bb064a0f1ede0e43886d7d6bd2a31474"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.143/Every.Manager_0.1.143_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
