cask "justevery-manager" do
  version "0.1.71"

  on_arm do
    sha256 "170e9c0461d8547b87b50ea066a92291fe53824d92712bedf96fe534e9ecfb5c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.71/Every.Manager_0.1.71_aarch64.dmg"
  end

  on_intel do
    sha256 "cdb899cb0760f89935bfd916ec78eced655c761d28df395a419b3b0383fc2225"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.71/Every.Manager_0.1.71_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
