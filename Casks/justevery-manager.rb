cask "justevery-manager" do
  version "0.1.160"

  on_arm do
    sha256 "01fdb0e95a2348b6e16c8a180ee0b937648edc9cab40ab5471cd80aa1a45333f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.160/Every.Manager_0.1.160_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "bc39eb3b7a87136d452397306ac0424d693b14670ea0aa68b1e0209fae137c3f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.160/Every.Manager_0.1.160_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
