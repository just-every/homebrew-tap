cask "justevery-manager" do
  version "0.1.137"

  on_arm do
    sha256 "d697a4eb1d7f22898a2fe588c59b46396bece43a46d4b42689b73c46902ebb89"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.137/Every.Manager_0.1.137_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "56a44eb5ae365eff481cb36e568756ed8d14b659240ed0179fa82a603e6bb7cb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.137/Every.Manager_0.1.137_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
