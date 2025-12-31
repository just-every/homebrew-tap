cask "justevery-manager" do
  version "0.1.89"

  on_arm do
    sha256 "d2944912490c5de5d47924f4547fd2ef536c0aec12e57ae623ff8b18fadc915d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.89/Every.Manager_0.1.89_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "720b29d7bac10428c8979644c9ca985b18e5751721a84b6cf8566645f1ec1e75"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.89/Every.Manager_0.1.89_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
