cask "justevery-manager" do
  version "0.1.84"

  on_arm do
    sha256 "de2ad6ce8bdf4fa38cb2b66c3501aef229c830cc7823476e5253e5a22e89ed24"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.84/Every.Manager_0.1.84_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "38c4b0faf682043d66e18b3867e2485ad96407e4e6d2e6babdee462ed788db03"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.84/Every.Manager_0.1.84_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
