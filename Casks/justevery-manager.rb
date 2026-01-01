cask "justevery-manager" do
  version "0.1.104"

  on_arm do
    sha256 "3ee4bb603998d1889f8a74c689ff940a553c2500707f062a8f445afc2ef0acaa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.104/Every.Manager_0.1.104_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "52a08c796b45fbbf12bd1e2a12961b481f935aba1af0fef13a642df19118390c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.104/Every.Manager_0.1.104_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
