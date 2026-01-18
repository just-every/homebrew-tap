cask "justevery-manager" do
  version "0.1.193"

  on_arm do
    sha256 "c039cf5020414635a93e6b875a5c5e78833811a353420aeddef990db9849acc5"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.193/Every.Manager_0.1.193_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "01d82908ce758c63baf0ae353f638c1d6fe5d5bc3571d357f5fb6a51c5288ebe"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.193/Every.Manager_0.1.193_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
