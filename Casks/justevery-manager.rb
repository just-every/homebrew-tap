cask "justevery-manager" do
  version "0.1.117"

  on_arm do
    sha256 "3246abbdb1d71a0a63edcfb4cba967742eaef937031c42d8f689fd4e6e834ce6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.117/Every.Manager_0.1.117_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7322086fccca6f6d2b173b5af631286c13402111fbdc533a114464974727ca26"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.117/Every.Manager_0.1.117_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
