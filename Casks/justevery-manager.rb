cask "justevery-manager" do
  version "0.1.15"

  on_arm do
    sha256 "d4cf15d27e8b3c7be8c43527925319c0b8237ea6dfe315106590150f50f644e7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.15/Every.Manager_0.1.15_aarch64.dmg"
  end

  on_intel do
    sha256 "e0b9ad924663c45d5cc2f1e38ce4b72bad07c916100163d7af728fa238b3c919"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.15/Every.Manager_0.1.15_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
