cask "justevery-manager" do
  version "0.1.79"

  on_arm do
    sha256 "215107d48040e11a000648d7a1bb5ea7751dfe24b84af43c8531e43f99c2e8cd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.79/Every.Manager_0.1.79_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6ca7f8a4bf9d30aa26c0822a566bc0b7563db2d059d8da919908a93229d1b8ed"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.79/Every.Manager_0.1.79_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
