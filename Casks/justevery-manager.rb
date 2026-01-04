cask "justevery-manager" do
  version "0.1.127"

  on_arm do
    sha256 "43643a7ece7dfb082d5f8577179df21d34edb264f40dc3f148197a27e5315642"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.127/Every.Manager_0.1.127_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "48c8555ef5c490e1641f05d13c776dfcf3ae105c8cd4023871fdfcb3b1483d26"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.127/Every.Manager_0.1.127_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
