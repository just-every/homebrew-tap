cask "justevery-manager" do
  version "0.1.77"

  on_arm do
    sha256 "b7614a0bb67c030dc4353106f6dd45157fdf0e1929550103b745d250a9cd3d7e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.77/Every.Manager_0.1.77_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e1c09aaea13aa7b50f47c4a05ba80eb5c6df02d5a679ae6161e5136a6a70fca3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.77/Every.Manager_0.1.77_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
