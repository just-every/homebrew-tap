cask "justevery-manager" do
  version "0.1.64"

  on_arm do
    sha256 "1adcd9c3ca3a3a858d444136107256df311c9ce67ddd4d1448f8b5ce080ea026"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.64/Every.Manager_0.1.64_aarch64.dmg"
  end

  on_intel do
    sha256 "9041114b7b867a6bc9a9dd6b059d50dc9df74ba32dce5239ca0387cc027cb55b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.64/Every.Manager_0.1.64_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
