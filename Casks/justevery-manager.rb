cask "justevery-manager" do
  version "0.1.164"

  on_arm do
    sha256 "8cdde520b6885ef82c6a9791853dcfb71c631179c0d3c9bb0ab5cc594395f8e3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.164/Every.Manager_0.1.164_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "377fe736b5820686784defde313910821e06c6bd569ed77f3183b6bc11b5aa3f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.164/Every.Manager_0.1.164_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
