cask "justevery-manager" do
  version "0.1.48"

  on_arm do
    sha256 "b04ef35920bcedd81b9bd7b63a089a4628f5c0e72e21da38c36f891b77e21c2d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.48/Every.Manager_0.1.48_aarch64.dmg"
  end

  on_intel do
    sha256 "bbe32ac93f1a6a25512fd469aa34757bd2fe976447a422d74123aba3e9b8eb0e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.48/Every.Manager_0.1.48_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
