cask "justevery-manager" do
  version "0.1.31"

  on_arm do
    sha256 "c45b5d3772b6e7b02639c0230a972578189281146e1982d2558a0118b6ede65b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.31/Every.Manager_0.1.31_aarch64.dmg"
  end

  on_intel do
    sha256 "186de04709a4f13546105d67bba1f3223b847f03eb818434d221eec2124b966d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.31/Every.Manager_0.1.31_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
