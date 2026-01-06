cask "justevery-manager" do
  version "0.1.141"

  on_arm do
    sha256 "417366f1b7427e8fbc269695201c2cc9f6929f1b69ba448231f521c56239e301"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.141/Every.Manager_0.1.141_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9304e4d5f2120dc80b5656258ab86d83595e3437e8425e3fe106f81d16fbd838"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.141/Every.Manager_0.1.141_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
