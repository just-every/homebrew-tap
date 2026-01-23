cask "justevery-manager" do
  version "0.1.219"

  on_arm do
    sha256 "0a3bf1fa5adea16543e381b34e947a84e7b59918863175a2fe4f834dd3ca347e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.219/Every.Manager_0.1.219_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1ca9b96df4d24ce4023145497b559dc12391b6c5805038febd03187eab37b8a7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.219/Every.Manager_0.1.219_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
