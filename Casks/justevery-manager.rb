cask "justevery-manager" do
  version "0.1.45"

  on_arm do
    sha256 "0322c827718c4bce44c63146b41d7406e94dfb834d98597727c6e5b3dfff57f1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.45/Every.Manager_0.1.45_aarch64.dmg"
  end

  on_intel do
    sha256 "5f3a198a8892218a794fe00972352f32d6f14edadac7941ff232eab527049f3d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.45/Every.Manager_0.1.45_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
