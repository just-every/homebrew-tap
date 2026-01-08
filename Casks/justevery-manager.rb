cask "justevery-manager" do
  version "0.1.156"

  on_arm do
    sha256 "41dd488c0decab956dd5658be261dc1df5ba9756683d08d03dca39ae3570122a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.156/Every.Manager_0.1.156_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "57dc3424f2cd19504fd34fdb040095158da34c0793d05e5542f2c00f76003559"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.156/Every.Manager_0.1.156_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
