cask "justevery-manager" do
  version "0.1.54"

  on_arm do
    sha256 "b9a8d14ae367a35a5045bdb39a8eb54eca005f902e15f2064c4ae34c229702c3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.54/Every.Manager_0.1.54_aarch64.dmg"
  end

  on_intel do
    sha256 "b50ccbfd98d248d7f3327685e9904d92e36857c9f4da6f20f56d627909606acc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.54/Every.Manager_0.1.54_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
