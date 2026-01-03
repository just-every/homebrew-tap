cask "justevery-manager" do
  version "0.1.119"

  on_arm do
    sha256 "80d82e3a0914d80ece187eb98580650c0f648539251274642370688e95fb5703"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.119/Every.Manager_0.1.119_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "00a8cc2168fd0cede9f2f6c3cb9dd92edaea3f4e2f5d867d0a6b52d720af6ff4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.119/Every.Manager_0.1.119_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
