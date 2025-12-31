cask "justevery-manager" do
  version "0.1.90"

  on_arm do
    sha256 "e1a018609db0868fcc9ed3503420090df7d721abdb123adb475f00b9cb3fa064"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.90/Every.Manager_0.1.90_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "fe9cce64d16b823dbf0e980f05648e141ab942f99add456c0e5b67fb1f9aafd5"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.90/Every.Manager_0.1.90_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
