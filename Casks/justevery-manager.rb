cask "justevery-manager" do
  version "0.1.4"

  on_arm do
    sha256 "ddc680f4261d8b1cfb095acaed33f5d3f8afcad593e6ac35d5abbc878a93a4e1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.4/Every.Manager_0.1.4_aarch64.dmg"
  end

  on_intel do
    sha256 "63cbb11d12c713eedd9c6efda76f398231399f3ca7f34719996fa35f7d1358df"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.4/Every.Manager_0.1.4_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
