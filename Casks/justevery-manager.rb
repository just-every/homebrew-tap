cask "justevery-manager" do
  version "0.1.5"

  on_arm do
    sha256 "10246caec90d6965bbf7b90ff9b1ae26314e735faf7fec42a6e3c67cf2ce731a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.5/Every.Manager_0.1.5_aarch64.dmg"
  end

  on_intel do
    sha256 "3c420c7b24e10340ee66b924b0314209046a50a29c69bef068f9e1e7dec3af57"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.5/Every.Manager_0.1.5_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
