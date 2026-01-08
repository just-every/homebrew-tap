cask "justevery-manager" do
  version "0.1.161"

  on_arm do
    sha256 "d4d7349b8ac4f8f3c4565e10aba048a0bf2696540910d249ee9932d2b25b668e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.161/Every.Manager_0.1.161_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "618a2f6f23e60d86fd1e73612e032f7b18eb7366f0943091fd167ba168230d09"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.161/Every.Manager_0.1.161_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
