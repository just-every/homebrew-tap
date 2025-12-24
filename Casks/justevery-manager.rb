cask "justevery-manager" do
  version "0.1.20"

  on_arm do
    sha256 "3207b12e8fc12853b6a0b9d0bd0f9374e8877cff392eb61b136b395249090afd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.20/Every.Manager_0.1.20_aarch64.dmg"
  end

  on_intel do
    sha256 "1e47cc10ee6ca5e3419367467fe5f43e8adb29d964f3832621151c45ea094cc4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.20/Every.Manager_0.1.20_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
