cask "justevery-manager" do
  version "0.1.212"

  on_arm do
    sha256 "33d5a8cfd7e7302cf77b1a612914bdb263039c798f354bbb08b37b390fef5d11"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.212/Every.Manager_0.1.212_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b90d9e9e99dd5224f833bd9254fd10bb1c79d6d8f01ed231bcea4d20a2f08eca"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.212/Every.Manager_0.1.212_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
