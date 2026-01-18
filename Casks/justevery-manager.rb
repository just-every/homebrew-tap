cask "justevery-manager" do
  version "0.1.208"

  on_arm do
    sha256 "7c62afbbc4a64595e3f5155d3857b4a7d036b9760dbb0a3d7546de147fa6b45e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.208/Every.Manager_0.1.208_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4c56c68b52a239230a2460604076b07b414851cef7d7efd6657f6facbae23234"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.208/Every.Manager_0.1.208_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
