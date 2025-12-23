cask "justevery-manager" do
  version "0.1.13"

  on_arm do
    sha256 "7a0b9040c4a24c1f4d10b25097a8d768ea827908c23121936cb84228b04a0fb8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.13/Every.Manager_0.1.13_aarch64.dmg"
  end

  on_intel do
    sha256 "a23da0a1ba77a2827c64b3d85ca5a7069aaa1d522b4063cbcde941c8d2bc82c9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.13/Every.Manager_0.1.13_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
