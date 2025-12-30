cask "justevery-manager" do
  version "0.1.57"

  on_arm do
    sha256 "4f6371bed690b056c39eb6e9c09b637e737f1b65e3e8a52396be285ca4f09945"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.57/Every.Manager_0.1.57_aarch64.dmg"
  end

  on_intel do
    sha256 "18349f9751c35c87aada79414a9a53cefc408a51ff0eb8f596cb48bef82b604e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.57/Every.Manager_0.1.57_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
