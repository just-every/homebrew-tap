cask "justevery-manager" do
  version "0.1.195"

  on_arm do
    sha256 "fa1bf4b89efb8172efa672b5c08a68245e39e2396550907a5ad7dd5717e66455"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.195/Every.Manager_0.1.195_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "f0b90b0cd0e13313720ea0036bc1e4ec3a6372b293ea417a033b247117beae7f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.195/Every.Manager_0.1.195_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
