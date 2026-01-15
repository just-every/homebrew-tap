cask "justevery-manager" do
  version "0.1.178"

  on_arm do
    sha256 "8439bed224ab82f0b6f54f40e104efbaafde609c183ca59e223c08b2ef041d0a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.178/Every.Manager_0.1.178_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "244a15bb9f424c19766a1fdb156b677998f04e019e7927cbcec21be31e2e452a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.178/Every.Manager_0.1.178_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
