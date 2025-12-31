cask "justevery-manager" do
  version "0.1.93"

  on_arm do
    sha256 "80c1decdedf975dee0a081afc3231cc850d7c12d6762021841a5532b1f1dc675"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.93/Every.Manager_0.1.93_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9ea4dafda089e47c1133b4a0aa0f7f50267ea80c51573be634dddd6e55b9ef2e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.93/Every.Manager_0.1.93_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
