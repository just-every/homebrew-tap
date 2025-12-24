cask "justevery-manager" do
  version "0.1.23"

  on_arm do
    sha256 "5a070177eab7db53bd3d562453de90586b696ae4b1148370d97ff9c51c3794c4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.23/Every.Manager_0.1.23_aarch64.dmg"
  end

  on_intel do
    sha256 "611178663c7d450b2c4c88aec2db7cacd08ae02e13c3728b7ad53c6169081d44"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.23/Every.Manager_0.1.23_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
