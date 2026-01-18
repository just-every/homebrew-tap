cask "justevery-manager" do
  version "0.1.190"

  on_arm do
    sha256 "dde3fd0c395f99d13920c76a27a53314f722159b87fbee53b6236fb6e0b3544e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.190/Every.Manager_0.1.190_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7af55605b0882d79e69e0bb892574c7d6194b395126281d088ce4edac11844aa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.190/Every.Manager_0.1.190_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
