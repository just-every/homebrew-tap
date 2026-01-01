cask "justevery-manager" do
  version "0.1.103"

  on_arm do
    sha256 "87f6ae5130d64ac922012418a7561cb09dafd3f278d0d868313edb1203808561"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.103/Every.Manager_0.1.103_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e96eba1796aacf5e6ce08fb147c436cf1292450eff087b264823f7b64d0fa41b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.103/Every.Manager_0.1.103_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
