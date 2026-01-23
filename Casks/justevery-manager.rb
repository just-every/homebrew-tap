cask "justevery-manager" do
  version "0.1.218"

  on_arm do
    sha256 "73787b1cf723fa2e3fded1c5c06bc9f1c61a919bb73092b6505979c1c6e0bf95"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.218/Every.Manager_0.1.218_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "2646b5e01019e4998803b8cf6e80319b278542d8f03af2d05b36742041278a98"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.218/Every.Manager_0.1.218_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
