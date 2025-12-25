cask "justevery-manager" do
  version "0.1.29"

  on_arm do
    sha256 "ed3964f1a69fdb4a61002c60e708664dcebe7f204d50fc7d472f8f8d7121aedd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.29/Every.Manager_0.1.29_aarch64.dmg"
  end

  on_intel do
    sha256 "324bfed276b67b21a174d21817b1806523335df89f972aaf50da112c91dcf5a1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.29/Every.Manager_0.1.29_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
