cask "justevery-manager" do
  version "0.1.206"

  on_arm do
    sha256 "f62eb6090e4644fd2db46ec7ac9eea790c0852b495d0c86265408874ed7535fa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.206/Every.Manager_0.1.206_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "3a6bd40bbb3e8f6d7a457cb99526ef4c2a5e43c6136f4595e02569da54ea027c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.206/Every.Manager_0.1.206_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
