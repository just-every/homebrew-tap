cask "justevery-manager" do
  version "0.1.68"

  on_arm do
    sha256 "c8c56c6498cf4adbbbe11225cf1ef676be56fe46996892cbc18d5918ec5fabbd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.68/Every.Manager_0.1.68_aarch64.dmg"
  end

  on_intel do
    sha256 "8c3d79f38c35cfa4a3db807ac81f07a23012b6748407ff4e1bba1f3654767540"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.68/Every.Manager_0.1.68_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
