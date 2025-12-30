cask "justevery-manager" do
  version "0.1.66"

  on_arm do
    sha256 "b2e25d21d9a05abc367d1f2134a65238770d9fe62a9a617282c538768ce5bc39"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.66/Every.Manager_0.1.66_aarch64.dmg"
  end

  on_intel do
    sha256 "e08679dbe70334d418b1755326b4ca6c73c595a22fb0a09b9f267e6e423411d3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.66/Every.Manager_0.1.66_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
