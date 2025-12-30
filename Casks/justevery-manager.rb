cask "justevery-manager" do
  version "0.1.51"

  on_arm do
    sha256 "42deb1e5bd1b2b4a142233991a8da775ec739ccc25d04565a42a7d48f63d43a1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.51/Every.Manager_0.1.51_aarch64.dmg"
  end

  on_intel do
    sha256 "4edc7ef8eaf809e27a8b71d167c8b3b4a20ab779874e905ec685eb3e58e42117"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.51/Every.Manager_0.1.51_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
