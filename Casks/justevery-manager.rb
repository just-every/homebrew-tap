cask "justevery-manager" do
  version "0.1.149"

  on_arm do
    sha256 "c9e1938ffcc72e8ed89a02e76cb5674b3c19ec158137f9c95929ffbf4e121810"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.149/Every.Manager_0.1.149_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "460a30902aecfea135df23d6d5087c02c4dea3820d6be6d35ca476fbf179a038"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.149/Every.Manager_0.1.149_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
