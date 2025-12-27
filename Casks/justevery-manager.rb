cask "justevery-manager" do
  version "0.1.42"

  on_arm do
    sha256 "47c3dde86c0e0890e591051cfd8cc6ee27aa6a81aed8cc3d97a58b4cbffe9e85"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.42/Every.Manager_0.1.42_aarch64.dmg"
  end

  on_intel do
    sha256 "ab02ad4ef24d4d2acc7a60629ca98a8ec6335fb3eea1a162a5bd90a37b353114"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.42/Every.Manager_0.1.42_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
