cask "justevery-manager" do
  version "0.1.67"

  on_arm do
    sha256 "d71e2cd27b0aa13ec334bcae646dccb40be2c95b0d419d703b8c86ebcfdb50e3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.67/Every.Manager_0.1.67_aarch64.dmg"
  end

  on_intel do
    sha256 "22a2fcabc5dbbc887b924104026db1afeb569373deeb7a45cff6cbca5fc023f2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.67/Every.Manager_0.1.67_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
