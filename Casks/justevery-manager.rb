cask "justevery-manager" do
  version "0.1.123"

  on_arm do
    sha256 "c7084325cac4251d3675e90d278c26c8b86be29b09b3f79d2c4097bc00359b19"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.123/Every.Manager_0.1.123_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "5ee0d56806148b4d9604c7839e4fd459703954276162f9202b33255179c7231a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.123/Every.Manager_0.1.123_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
