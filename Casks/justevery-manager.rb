cask "justevery-manager" do
  version "0.1.59"

  on_arm do
    sha256 "37086ca914aa6be497a24167c3cfb0ffcef6776d41ef6876ba9af1c930c63c04"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.59/Every.Manager_0.1.59_aarch64.dmg"
  end

  on_intel do
    sha256 "193133c10448b8458e9696f93abb2cba584f13d39808bdb614e96c669b58d52f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.59/Every.Manager_0.1.59_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
