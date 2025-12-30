cask "justevery-manager" do
  version "0.1.60"

  on_arm do
    sha256 "602b5d4b2a571a642d95550e0ae1e4709ca930d7a6bcbc976026b5f35cb800a7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.60/Every.Manager_0.1.60_aarch64.dmg"
  end

  on_intel do
    sha256 "a8aa3c3fee0d51963cc09ba38ac0d8b16fa554467dc504982e8294d3a6d874e1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.60/Every.Manager_0.1.60_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
