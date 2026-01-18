cask "justevery-manager" do
  version "0.1.199"

  on_arm do
    sha256 "a968e566dd207baca301f451b920d974879b8b238cd3e28f80e77775691554e1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.199/Every.Manager_0.1.199_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "3fb726005761a3e0630c608cb94896a5d672e03b97057883eab0b8ee71f7b526"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.199/Every.Manager_0.1.199_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
