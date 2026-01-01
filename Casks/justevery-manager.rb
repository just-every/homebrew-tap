cask "justevery-manager" do
  version "0.1.102"

  on_arm do
    sha256 "6a8715206eefefab58a6ad115fdfa735ef4f0fe9074ee87ad859dfc3d977c039"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.102/Every.Manager_0.1.102_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "3ee326c7c42b366be9f9d7fa7971b295710128ee58d0f545b66b2eb764b1d875"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.102/Every.Manager_0.1.102_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
