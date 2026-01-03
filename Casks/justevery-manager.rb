cask "justevery-manager" do
  version "0.1.122"

  on_arm do
    sha256 "9b2a90224d14fc3714bf427f1230725b86953a466b28ebdc5c69450b58eed984"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.122/Every.Manager_0.1.122_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ccb53d3cfd14c2d61e11196091614c5e1b7f0581aed09b486e9780c1307be99c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.122/Every.Manager_0.1.122_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
