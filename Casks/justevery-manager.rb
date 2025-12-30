cask "justevery-manager" do
  version "0.1.62"

  on_arm do
    sha256 "e4b123d9f1add924caa351611dc2d7fe8a06463eec5f857e8cbde64e78aa2c20"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.62/Every.Manager_0.1.62_aarch64.dmg"
  end

  on_intel do
    sha256 "09f473032431ecedf4943485f5b6410b152d5be0974b861fdbc1289428b4e5b3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.62/Every.Manager_0.1.62_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
