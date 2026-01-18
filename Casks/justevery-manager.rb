cask "justevery-manager" do
  version "0.1.207"

  on_arm do
    sha256 "613c4fbaf29c002520237512208c615ddd0b560205990b217d15158e8a7be894"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.207/Every.Manager_0.1.207_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "19c7fc9860131d482e3d0d2588747becde98b54208d4db5d21d192e586559ece"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.207/Every.Manager_0.1.207_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
