cask "justevery-manager" do
  version "0.1.36"

  on_arm do
    sha256 "162b4f6a7c9ee217f4e41288baa511a0cef121ec23a4f498103d22084410a03e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.36/Every.Manager_0.1.36_aarch64.dmg"
  end

  on_intel do
    sha256 "4e0b2130d119faee0c386ded810c9850071563fda24f69db1a365cc9cb7a2c82"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.36/Every.Manager_0.1.36_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
