cask "justevery-manager" do
  version "0.1.131"

  on_arm do
    sha256 "b0a07fac72f7794437b9dddd0db41606372a5146153df3ab15873f5da074e7a2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.131/Every.Manager_0.1.131_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1d4a8988ff533e89deb01de50d368dfc93f2248330b1883e0fc5349022c424b5"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.131/Every.Manager_0.1.131_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
