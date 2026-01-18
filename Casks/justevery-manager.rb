cask "justevery-manager" do
  version "0.1.205"

  on_arm do
    sha256 "88cea04a95aeeda6b6e0263c6e37b35c4f84e790926ea9fff828fab3809ca1cd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.205/Every.Manager_0.1.205_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7ba3a3517e717a8be96761da6a91d728186088c838fc84e117a752885620bc1a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.205/Every.Manager_0.1.205_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
