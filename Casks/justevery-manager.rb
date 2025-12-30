cask "justevery-manager" do
  version "0.1.47"

  on_arm do
    sha256 "1c6413344453201fddb36a7e6bca2c6ec05f782511bd9124d2042d9a1fb32481"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.47/Every.Manager_0.1.47_aarch64.dmg"
  end

  on_intel do
    sha256 "f0621bedd80022986bc103254eb2b513aa2a90052a8910393cb8cc32e13fed0b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.47/Every.Manager_0.1.47_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
