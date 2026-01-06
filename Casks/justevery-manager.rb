cask "justevery-manager" do
  version "0.1.152"

  on_arm do
    sha256 "012bc83e10d47d8cab9376652099a3182fbb0b835410e5c63a47fdf1fb972c87"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.152/Every.Manager_0.1.152_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "c22e84859388a40616ebbe6ac8dcd07469327a0afeaff79cc6e0d9748f7fd65b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.152/Every.Manager_0.1.152_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
