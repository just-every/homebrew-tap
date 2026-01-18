cask "justevery-manager" do
  version "0.1.202"

  on_arm do
    sha256 "010da8f78ffc3db8f646da65380c283b295453de4fd64f8d33687e8573fa51de"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.202/Every.Manager_0.1.202_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "959ec55447e11fea20a6f51ebc13a5a011c3146395a4393d93cdbfedc8c34125"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.202/Every.Manager_0.1.202_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
