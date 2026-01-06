cask "justevery-manager" do
  version "0.1.147"

  on_arm do
    sha256 "93986b87b513480908b5190d7e3f847d217afdc371769ef50ff24d104f04a4a7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.147/Every.Manager_0.1.147_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ef8a117e26fe80756fc0c8e63e855c7eb724a317125bcd864ed59690ef5ce57e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.147/Every.Manager_0.1.147_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
