cask "justevery-manager" do
  version "0.1.33"

  on_arm do
    sha256 "074e82e6620e6b5ea2010380c6fe512455c5117369dc5e4320ed073934d23496"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.33/Every.Manager_0.1.33_aarch64.dmg"
  end

  on_intel do
    sha256 "e4e3a94065a2fdbce84aacd60cb8c3546de8b557b05af26061840cf8da7a6fe6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.33/Every.Manager_0.1.33_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
