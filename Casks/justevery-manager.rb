cask "justevery-manager" do
  version "0.1.213"

  on_arm do
    sha256 "02701ea16ba1c8656e844f4ecca506221c9af0b821bea6dc7286c5440b3f696b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.213/Every.Manager_0.1.213_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "279196ac3e890d5c3aef3433da3368f347c7ef940e47412480f027f30c48aa09"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.213/Every.Manager_0.1.213_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
