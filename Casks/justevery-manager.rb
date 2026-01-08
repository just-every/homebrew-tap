cask "justevery-manager" do
  version "0.1.157"

  on_arm do
    sha256 "81bf524a3d0aa45bf989ebc84485a57640c156eaab3d5194af2d24257e0065c8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.157/Every.Manager_0.1.157_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d0f62625558741bd91062c580be543a461e17679eddfe78e9e50ec70f7c72a1b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.157/Every.Manager_0.1.157_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
