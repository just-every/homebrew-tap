cask "justevery-manager" do
  version "0.1.24"

  on_arm do
    sha256 "4b8458f2aac8d221f8ab27c2e8c6d0f212d1052b68f6046067ad91308cb01b6c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.24/Every.Manager_0.1.24_aarch64.dmg"
  end

  on_intel do
    sha256 "85b960b60bf8a718cb6ef192b4a688746e04b9c0775af867b6a02de2d0c6e323"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.24/Every.Manager_0.1.24_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
