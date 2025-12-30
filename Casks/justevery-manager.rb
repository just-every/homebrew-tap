cask "justevery-manager" do
  version "0.1.53"

  on_arm do
    sha256 "b21b0181028e845cd69d0fcd096a6c45fe8b5fd6e270d1a729e12564b8ef7afa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.53/Every.Manager_0.1.53_aarch64.dmg"
  end

  on_intel do
    sha256 "6f4786c654fa9b459365c2a909a4ab48b98a6f556c9b166a0340d59a77dd9e06"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.53/Every.Manager_0.1.53_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
