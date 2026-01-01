cask "justevery-manager" do
  version "0.1.115"

  on_arm do
    sha256 "fbe5768adbba8067b674fb13a5310dcd0f55541b3b0e48452c496750d17b5ca9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.115/Every.Manager_0.1.115_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4a94df2ea9d2aa3fc494c00240db07c5fcec956a234a8f4439510d39cb02ba7e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.115/Every.Manager_0.1.115_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
