cask "justevery-manager" do
  version "0.1.144"

  on_arm do
    sha256 "c77da1cc527127f615b34603d481ea654847919eb353c8d5b53e33d8fd034e1b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.144/Every.Manager_0.1.144_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "61d13d9db834f9616f1ebb52a85bfdd8591b058453c83f103c6c83ba374499ec"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.144/Every.Manager_0.1.144_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
