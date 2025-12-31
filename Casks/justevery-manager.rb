cask "justevery-manager" do
  version "0.1.83"

  on_arm do
    sha256 "42b9439fe6da5f054b4a8d9f0e0e858133743d0a297ca836e85c75634a3cf2b2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.83/Every.Manager_0.1.83_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "76481a23618f9f714f747ebd29217043a35f8f72d1df051d4a125982650113d4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.83/Every.Manager_0.1.83_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
