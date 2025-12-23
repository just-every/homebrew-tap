cask "justevery-manager" do
  version "0.1.12"

  on_arm do
    sha256 "1bbcc8bcf10b9dd8946d223883319dfdd8e1e96a1389ee7c2459d927ad4dc9b7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.12/Every.Manager_0.1.12_aarch64.dmg"
  end

  on_intel do
    sha256 "76245c147149699013a2c8ef9f098c91540a2d2667d31b559afbb8b2b208d932"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.12/Every.Manager_0.1.12_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
