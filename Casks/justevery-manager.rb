cask "justevery-manager" do
  version "0.1.120"

  on_arm do
    sha256 "d6f96bcd09f07447db1b82fb8f59ef239796606a19b7116737418bd7e994cef9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.120/Every.Manager_0.1.120_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "acaf1452b80345b294129dce85c92ef340514926999c414f426ed1e21b7d3cb3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.120/Every.Manager_0.1.120_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
