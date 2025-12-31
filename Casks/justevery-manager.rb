cask "justevery-manager" do
  version "0.1.86"

  on_arm do
    sha256 "eb1294e1eb00c9a6597f35b6757b275ebbeb6cf6f1cad0ea99e8ae353af7db37"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.86/Every.Manager_0.1.86_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "908cfed9f029580687423ededceef2f55e29d372ed3e914c54d07bd03a99bc5b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.86/Every.Manager_0.1.86_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
