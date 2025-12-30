cask "justevery-manager" do
  version "0.1.61"

  on_arm do
    sha256 "8265a042e58e010abf6273c94b4bd4064125f4bb716b26ecca3c35ffc13e1dfc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.61/Every.Manager_0.1.61_aarch64.dmg"
  end

  on_intel do
    sha256 "acf29b01167054ff7a711ea33557c437ab18c65b5c0de77fabbb9c28458727f3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.61/Every.Manager_0.1.61_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
