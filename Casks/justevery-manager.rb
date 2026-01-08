cask "justevery-manager" do
  version "0.1.165"

  on_arm do
    sha256 "80a88a82d328e3481398a8cc226a6cdef9346f2b2487dfb43bc29b1357097450"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.165/Every.Manager_0.1.165_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "a40458af84f4347a13777a50eb6b0509351619494f3dbae9a7612a941697160a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.165/Every.Manager_0.1.165_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
