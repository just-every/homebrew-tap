cask "justevery-manager" do
  version "0.1.174"

  on_arm do
    sha256 "8098e0b44c194140a3de7730da4912432633d614f4e6a45871898b4daa0b11ab"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.174/Every.Manager_0.1.174_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "8f9fa219fd59f9b6082f29eab6a9590b90a7698904f67ec8c44c12ee91aebda6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.174/Every.Manager_0.1.174_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
