cask "justevery-manager" do
  version "0.1.192"

  on_arm do
    sha256 "2ef2a2bc6f2d6280b5ac331fd248e05d55427e5d4a969bfce45ce85b829b59b8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.192/Every.Manager_0.1.192_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "678ed84292f8078e6c52b386971a115e71f673813c395c7a56c4bd5aac63be33"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.192/Every.Manager_0.1.192_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
