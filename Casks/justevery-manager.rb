cask "justevery-manager" do
  version "0.1.101"

  on_arm do
    sha256 "3a256ea312515227360ddab0492b43d59c24a87bc2ae5bae2e36d2ce59279179"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.101/Every.Manager_0.1.101_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1ef91de094872233d26abf178b3fbf239ae5f1ce8182a0b1d7148663fe1b08d4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.101/Every.Manager_0.1.101_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
