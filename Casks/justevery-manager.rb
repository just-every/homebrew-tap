cask "justevery-manager" do
  version "0.1.55"

  on_arm do
    sha256 "0a2ed7f64d38ef6b53dfdb45bf7ea51908754c3c577b0afd567ad1ba4afc04af"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.55/Every.Manager_0.1.55_aarch64.dmg"
  end

  on_intel do
    sha256 "9b8d1f660d7652c08fa5a9ca4213d358fe74ac098b8494df75433e8895a9e328"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.55/Every.Manager_0.1.55_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
