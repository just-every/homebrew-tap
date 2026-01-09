cask "justevery-manager" do
  version "0.1.173"

  on_arm do
    sha256 "f8a17a6141f8ad35d35e1fa7f7316238196e022b30ba91e243ecc4fec0910b60"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.173/Every.Manager_0.1.173_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "14adbf335a5e800e8f049da09599ad8506a770109f7821ebfa5f0d3da38c5362"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.173/Every.Manager_0.1.173_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
