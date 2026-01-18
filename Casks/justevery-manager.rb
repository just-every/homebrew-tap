cask "justevery-manager" do
  version "0.1.194"

  on_arm do
    sha256 "10e093b451c5339ad2b69a1da2533f2f105863eab9d91db0c2a527d7ddbf3399"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.194/Every.Manager_0.1.194_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7805edd470cf759ad5de6e3adf5d9e571e7d6e546300e55219c802f12b630fe0"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.194/Every.Manager_0.1.194_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
