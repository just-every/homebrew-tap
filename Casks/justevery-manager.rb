cask "justevery-manager" do
  version "0.1.204"

  on_arm do
    sha256 "029c83f2eee1ee96bf25b75c0c18f486c9226dc55c1a621a13f4b81aa7716446"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.204/Every.Manager_0.1.204_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "3f9cca0891f5c909c3466673b22cda0549db1e6c7939755e03ae85b11ca8e736"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.204/Every.Manager_0.1.204_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
