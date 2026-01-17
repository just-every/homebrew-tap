cask "justevery-manager" do
  version "0.1.187"

  on_arm do
    sha256 "badd90ecab71c16bbd843422c11c18fcd1a7e134ecd38f6982fbbc453f40405a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.187/Every.Manager_0.1.187_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "a56f137f11ae42123869d276e075f93682af8c5e45a853796d0022441c116491"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.187/Every.Manager_0.1.187_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
