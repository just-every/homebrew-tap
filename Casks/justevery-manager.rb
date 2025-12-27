cask "justevery-manager" do
  version "0.1.37"

  on_arm do
    sha256 "53cc9417df65c8b121a4b09c508e4fe3e4e87865cfe7dabf26ef471e3d0b9611"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.37/Every.Manager_0.1.37_aarch64.dmg"
  end

  on_intel do
    sha256 "2a34c7b6269602a134e5366b02b1477ba1ae51797cce8f572f115664b58f21c0"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.37/Every.Manager_0.1.37_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
