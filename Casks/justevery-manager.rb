cask "justevery-manager" do
  version "0.1.65"

  on_arm do
    sha256 "92d1910a53aa28f86313fd126a475caa93bd30e4e8e58527c6280f29b949d4af"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.65/Every.Manager_0.1.65_aarch64.dmg"
  end

  on_intel do
    sha256 "e2b61feaa9256912ae8103862d72d213cac31ee11f21523c0ad7d887ad3f8d1b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.65/Every.Manager_0.1.65_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
