cask "justevery-manager" do
  version "0.1.211"

  on_arm do
    sha256 "ba5d924ef5d58116c5f49d42b9c690963d7aab073365e63c6c5077f4fed8f737"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.211/Every.Manager_0.1.211_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "77772bc83dc9a8cb23142dabed555638aa8322e4caec3ad7f8db3a16ee99cb1a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.211/Every.Manager_0.1.211_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
