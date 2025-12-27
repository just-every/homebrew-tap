cask "justevery-manager" do
  version "0.1.40"

  on_arm do
    sha256 "95c288c970851ae2e6f18662bbffe497bc847dab330779e2b785b429f29025fc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.40/Every.Manager_0.1.40_aarch64.dmg"
  end

  on_intel do
    sha256 "a9064a64795c659a6215245ef0dd73883ae3e76b7330ad0ebae0a3754eefd216"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.40/Every.Manager_0.1.40_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
