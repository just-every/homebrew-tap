cask "justevery-manager" do
  version "0.1.136"

  on_arm do
    sha256 "b22e71aeed6eeffeb640c66bee9a80fc9c46b9c8e54f1b32eb670bf12366173d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.136/Every.Manager_0.1.136_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1ee4fe7f1db6af9b46c827f0528cbc02d3991709648fd309b600420dc7c1ecf4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.136/Every.Manager_0.1.136_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
