cask "justevery-manager" do
  version "0.1.184"

  on_arm do
    sha256 "99e91098023e7a5b44b6f21cb631b8ca286c12609dad6d71a7c6a33965c16e38"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.184/Every.Manager_0.1.184_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "459d053ff5738431e8d3d464e3b517df382ae4d0fcdff61ca28bc93243bb9c12"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.184/Every.Manager_0.1.184_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
