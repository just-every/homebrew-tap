cask "justevery-manager" do
  version "0.1.180"

  on_arm do
    sha256 "92d49d89d7c45727a4f683d784c2f24b1099428d4cf5a7ec9ea50b6531c0db10"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.180/Every.Manager_0.1.180_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d787781ed39cf787fa31c0c961e3158cbc8753371b09f9fe5e9771907fa15fdd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.180/Every.Manager_0.1.180_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
