cask "justevery-manager" do
  version "0.1.28"

  on_arm do
    sha256 "4c10e9f7fa868e6682044b4687eacc0d6adfb3a6e58cbe716b0e756e8c7baa69"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.28/Every.Manager_0.1.28_aarch64.dmg"
  end

  on_intel do
    sha256 "97ff91a98d1bbd908a5f429f1969ede67c47286134576224412fa8911d88e943"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.28/Every.Manager_0.1.28_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
