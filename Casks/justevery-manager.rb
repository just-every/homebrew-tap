cask "justevery-manager" do
  version "0.1.142"

  on_arm do
    sha256 "5e971d429b6012281e92a014f3c241496d3e19c9cabaf66cd5aef0be6ddce176"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.142/Every.Manager_0.1.142_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "750d0f45f677e4b307edbb37e39fc27dbb92832542aae4d5d2c0a81154d7ef15"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.142/Every.Manager_0.1.142_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
