cask "justevery-manager" do
  version "0.1.14"

  on_arm do
    sha256 "33bb06dfcb6def4c66105df93d6eaf2a09c3010f55d3d906ed0e2e212bef0300"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.14/Every.Manager_0.1.14_aarch64.dmg"
  end

  on_intel do
    sha256 "2234322fd031a8931aa26bc77c232dbc3c3dd14003ceaadcfc136441895c25b8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.14/Every.Manager_0.1.14_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
