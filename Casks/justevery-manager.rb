cask "justevery-manager" do
  version "0.1.201"

  on_arm do
    sha256 "77673465ed5165d3b1f9e7149547e7af9ea28c1cd149e5b616dd030871f9cbf3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.201/Every.Manager_0.1.201_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "aeace9ea97f2d6a41a717a3267df46baff0882056c7da1dbb7b8088b40933cd7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.201/Every.Manager_0.1.201_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
