cask "justevery-manager" do
  version "0.1.27"

  on_arm do
    sha256 "3aa8096af8c0eb01912059a7374d966d52597bad6a01a2f93b7594e458d968f9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.27/Every.Manager_0.1.27_aarch64.dmg"
  end

  on_intel do
    sha256 "a4c55feca143ae71b83104fb971eca7c9fe627be4fd9f43996271b215ce8f8ac"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.27/Every.Manager_0.1.27_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
