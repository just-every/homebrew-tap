cask "justevery-manager" do
  version "0.1.170"

  on_arm do
    sha256 "aea2d54c461211e31f86fd6b1da6ec6518d3dd22608c9d29ad4fab253a703648"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.170/Every.Manager_0.1.170_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e789efc0cf145711cba41228d0d3b26812d61bd7915572d9ed9a0772560aff6d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.170/Every.Manager_0.1.170_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
