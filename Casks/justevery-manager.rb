cask "justevery-manager" do
  version "0.1.129"

  on_arm do
    sha256 "2551256637d7d36a2cc37125cb35fa3926d2a1825a338656092c7c792dc323c8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.129/Every.Manager_0.1.129_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "fb71d1f53b62326c5726089ec25faff2bf2b8548ba4daefb83fe9ff85169f070"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.129/Every.Manager_0.1.129_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
