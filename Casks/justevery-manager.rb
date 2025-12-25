cask "justevery-manager" do
  version "0.1.30"

  on_arm do
    sha256 "ecc2f31177737538034caf3db36f20b792a1682c4262f63555739f3341f77b91"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.30/Every.Manager_0.1.30_aarch64.dmg"
  end

  on_intel do
    sha256 "9d8398cadfb56d20a1c378341078c367dace7f28f20dc5e0babcaf505458551e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.30/Every.Manager_0.1.30_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
