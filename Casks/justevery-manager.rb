cask "justevery-manager" do
  version "0.1.183"

  on_arm do
    sha256 "219decc88997101be3b648379f20e40c20f16b615309438292185362ffb5a9a2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.183/Every.Manager_0.1.183_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "32b21e60b0a20af6ceadbc007660a03e0bd93d928a09c328f05bda4686bcb6dc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.183/Every.Manager_0.1.183_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
