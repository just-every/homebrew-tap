cask "justevery-manager" do
  version "0.1.97"

  on_arm do
    sha256 "e5307981db56fa0b1b87821309659092a7ab112b7ae0197ebfc619ef430860cb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.97/Every.Manager_0.1.97_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9633e4b8b281b4562d79b14e54be4a2f9c5f86b9b42666fee87cc44f29262176"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.97/Every.Manager_0.1.97_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
