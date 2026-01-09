cask "justevery-manager" do
  version "0.1.169"

  on_arm do
    sha256 "4b3188fd574dd249b43a2434cb0b0fc6085df0a5a3a17febcf38c4927d10ff78"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.169/Every.Manager_0.1.169_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "af7acf6a86b0e86e8bc2d4cee9f6d25dd7e5bdf9f393f5d0607110f0935981c7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.169/Every.Manager_0.1.169_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
