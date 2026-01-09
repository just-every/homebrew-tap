cask "justevery-manager" do
  version "0.1.168"

  on_arm do
    sha256 "326a7e52e4c03427f822bc9d7b39e87be88d5ef39c11c6da365969dc4c7aaf88"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.168/Every.Manager_0.1.168_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4c2a1df70900f5dce61b2506c7c742982ad39ff2423cb6409a1b012c43dddd84"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.168/Every.Manager_0.1.168_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
