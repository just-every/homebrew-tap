cask "justevery-manager" do
  version "0.1.95"

  on_arm do
    sha256 "b4bf2d19b124cd0e857546d4b93b3ac39ce8b28911378df26dc13ef2f9dbcb4d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.95/Every.Manager_0.1.95_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7f114ca6403530fa41ca2e6f85fe0993cacb309d568cdcb1d19587f1ff9f2f24"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.95/Every.Manager_0.1.95_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
