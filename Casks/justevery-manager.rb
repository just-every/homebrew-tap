cask "justevery-manager" do
  version "0.1.209"

  on_arm do
    sha256 "2e950cc38b311f3882a8bb697388979d713d97701584907952d25150aeb32884"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.209/Every.Manager_0.1.209_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "86376105cd859ac7ae85520e2ae5d56a120eef498e0d344ba9d358f29600f79b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.209/Every.Manager_0.1.209_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
