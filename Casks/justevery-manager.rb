cask "justevery-manager" do
  version "0.1.176"

  on_arm do
    sha256 "654c6a9bfc8e0a22faa3bf1996dafaf0717a9fbc9a7fd82bed7dfb47ac6030ad"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.176/Every.Manager_0.1.176_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "41e5b5c08e19dd052696eaa229bcc1c8fc8e0cc27164511ba3210ac8b383a031"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.176/Every.Manager_0.1.176_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
