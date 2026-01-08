cask "justevery-manager" do
  version "0.1.167"

  on_arm do
    sha256 "68b2ba2dff1b991062f005b19924c4d927e5fc36525375e48c9cb04da37deaa4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.167/Every.Manager_0.1.167_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "5e2c678744dccfc7c35f3a6e34f05bc39d5378eeadc2730fc3540a6dbeca6132"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.167/Every.Manager_0.1.167_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
