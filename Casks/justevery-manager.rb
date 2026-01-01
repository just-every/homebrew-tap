cask "justevery-manager" do
  version "0.1.105"

  on_arm do
    sha256 "141210c1c0ea467ba7b8f8d7a00f41658d333353605e0cb408038bbaa27ac559"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.105/Every.Manager_0.1.105_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "753ad6aaa9bf522879b6e842fa8dd2bf57a30af025c274224709292b603aad53"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.105/Every.Manager_0.1.105_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
