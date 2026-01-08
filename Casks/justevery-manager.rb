cask "justevery-manager" do
  version "0.1.159"

  on_arm do
    sha256 "08fb6977ccaeb362c93d8f3f74f5d8f5003443286ef77e25b04711c07b822822"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.159/Every.Manager_0.1.159_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9a02d8f9ead2c983319ae618fdfb7442289c9382ef94d88a442276a7f807df7b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.159/Every.Manager_0.1.159_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
