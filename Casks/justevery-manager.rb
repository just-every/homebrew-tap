cask "justevery-manager" do
  version "0.1.130"

  on_arm do
    sha256 "3504107cb02a475321138b9f6b91dc2f7499754b30e832ff7312d597b385247a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.130/Every.Manager_0.1.130_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1ff36ca6433afe4c6bca312256b66e97638e9ce03b346d1d2f145e45b4939649"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.130/Every.Manager_0.1.130_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
