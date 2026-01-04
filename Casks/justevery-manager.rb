cask "justevery-manager" do
  version "0.1.126"

  on_arm do
    sha256 "225c38f84ed21024d3ec29de4f05dce1fead7f918cfb5c82c23a4cf6568a50ae"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.126/Every.Manager_0.1.126_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "843d32d7db3f01a9d3d9aa0768a89a6be5f68ad7ec6702ee77d7d4d547c60f40"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.126/Every.Manager_0.1.126_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
