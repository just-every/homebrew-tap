cask "justevery-manager" do
  version "0.1.155"

  on_arm do
    sha256 "9b5724ee22af9155e01d0bf1cac7f97d269bf155b0698fbb451e1b3a75513d1d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.155/Every.Manager_0.1.155_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e804d05917ec477ae26e520ca67578f3133c2b44a2bfebf5ccc4fb3dc0673ec1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.155/Every.Manager_0.1.155_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
