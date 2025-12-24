cask "justevery-manager" do
  version "0.1.17"

  on_arm do
    sha256 "16db8a278389d3830899bd9a1f2606e4f917e65c54a674e660dafb6c05ee0fb8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.17/Every.Manager_0.1.17_aarch64.dmg"
  end

  on_intel do
    sha256 "06cb0ce65e75005e0be1d60814cb65dc3b51c677d6a9ac99a1e50b71a14e5178"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.17/Every.Manager_0.1.17_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
