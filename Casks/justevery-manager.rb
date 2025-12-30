cask "justevery-manager" do
  version "0.1.72"

  on_arm do
    sha256 "8e57be53ce583d83d2cb9ce46a2e94e42a6edaaf3100ca41c36278508f6cfb0d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.72/Every.Manager_0.1.72_aarch64.dmg"
  end

  on_intel do
    sha256 "6eff499c22c4b646741a4e152daa901feecf5aad06fe952531983c8ead851efb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.72/Every.Manager_0.1.72_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
