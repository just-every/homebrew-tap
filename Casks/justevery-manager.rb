cask "justevery-manager" do
  version "0.1.39"

  on_arm do
    sha256 "ea98ca2a6465918cfb9aec613eba968b211ea869513ce58d67348b832dc7cabc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.39/Every.Manager_0.1.39_aarch64.dmg"
  end

  on_intel do
    sha256 "2090164160e6699ccf80348c12aab4221ac93890b78236c4da439744c83b7238"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.39/Every.Manager_0.1.39_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
