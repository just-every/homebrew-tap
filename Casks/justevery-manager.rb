cask "justevery-manager" do
  version "0.1.163"

  on_arm do
    sha256 "ae33ea3004f366e4197cfb83b17bbb0ea6a02b888e9f63b4788c49a8af1af4de"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.163/Every.Manager_0.1.163_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "c6d7bfbdb0d261a86d2aa658e8778027fff2e9e864b814ee723f1c19234fff18"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.163/Every.Manager_0.1.163_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
