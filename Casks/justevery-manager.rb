cask "justevery-manager" do
  version "0.1.8"

  on_arm do
    sha256 "f2e0aaec5c37444fcda551f48c385f37e9dbcf42d751b4338616d78624dde099"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.8/Every.Manager_0.1.8_aarch64.dmg"
  end

  on_intel do
    sha256 "3ee7a82d034bb43a98ca3d321874565876e774a5bdc17c1249e25ca335389af8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.8/Every.Manager_0.1.8_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
