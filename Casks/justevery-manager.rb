cask "justevery-manager" do
  version "0.1.217"

  on_arm do
    sha256 "45a62acc7ecb96290024c1cb834a444efb306c6189d57c940f402e7170e7821d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.217/Every.Manager_0.1.217_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "771a2c1945998259bfa805e84a5cbc11a5b07accf291c371da00ef76015377f5"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.217/Every.Manager_0.1.217_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
