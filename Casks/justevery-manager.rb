cask "justevery-manager" do
  version "0.1.107"

  on_arm do
    sha256 "76940213738e9867527db1c50c4b3f49cc8c729a5ac8bbad6d95fb8f682a32e8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.107/Every.Manager_0.1.107_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "e58e09405cd127f00d54d05cba61282ae675458f692f3046dcbfc86dc749b2b3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.107/Every.Manager_0.1.107_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
