cask "justevery-manager" do
  version "0.1.34"

  on_arm do
    sha256 "6e8d34b0978b595f369973f776db11f79a3f7d49ca0f74d68861868398c1afa0"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.34/Every.Manager_0.1.34_aarch64.dmg"
  end

  on_intel do
    sha256 "1623b59b8d2d141a655264575c92431e8214ba4c6a6a98ba06ba664f357427f2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.34/Every.Manager_0.1.34_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
