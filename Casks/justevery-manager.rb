cask "justevery-manager" do
  version "0.1.99"

  on_arm do
    sha256 "ef8a3895be0c326825035300b8e0d7c47652b9c7ffb66300ef1eeadbd408c2fd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.99/Every.Manager_0.1.99_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "effa4aade88d5578172d79a3f78bdd2473c2514e8e20131ef15b827175f83306"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.99/Every.Manager_0.1.99_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
