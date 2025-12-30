cask "justevery-manager" do
  version "0.1.58"

  on_arm do
    sha256 "665f5cdb691b9c4839fcbf5539b534c185e61ef9150d2a4cf191bbfd2aec74fc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.58/Every.Manager_0.1.58_aarch64.dmg"
  end

  on_intel do
    sha256 "6d69f53bf1241b13b1ad7a610283aaae5328f6c15e5b59bc84a041358a5dcabc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.58/Every.Manager_0.1.58_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
