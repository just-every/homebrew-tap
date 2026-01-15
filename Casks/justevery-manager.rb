cask "justevery-manager" do
  version "0.1.179"

  on_arm do
    sha256 "2c1495c1d9428a2e7d219f9ab61787c87d506c9ba712a4a4802c44053407a63b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.179/Every.Manager_0.1.179_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "cb1cb7cd022418729a1539f6dce18ef28a6a339891b8e632ad2aef762c9fd3f4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.179/Every.Manager_0.1.179_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
