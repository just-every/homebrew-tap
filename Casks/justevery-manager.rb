cask "justevery-manager" do
  version "0.1.108"

  on_arm do
    sha256 "f29212f4d6a8dd92a691ce723ad431ce1fe389e6db4b5a5b34a6400a4b017486"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.108/Every.Manager_0.1.108_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e43dd818975dfa3ffea41ddf3eacd998098c51cf6ea3774668e6b0a7ed354143"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.108/Every.Manager_0.1.108_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
