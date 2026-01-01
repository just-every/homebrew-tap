cask "justevery-manager" do
  version "0.1.106"

  on_arm do
    sha256 "cf2f0d517b4bc640a7e9b41e0baf701ff72a0327c1dac1361ed9884960443199"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.106/Every.Manager_0.1.106_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "96ae79398d7674bc13dfb9053984feea0673a3317971f93823e55af0769c2acb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.106/Every.Manager_0.1.106_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
