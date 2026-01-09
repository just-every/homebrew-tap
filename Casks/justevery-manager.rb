cask "justevery-manager" do
  version "0.1.172"

  on_arm do
    sha256 "8748e0aa8af3ec62c8424c9bc8e3ecdb34134c495d128272de4a79f9c7798ade"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.172/Every.Manager_0.1.172_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "bec3b807b17e863ae912804e7f331775155ef8a0dc1a3f441e0cf9d27ec38249"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.172/Every.Manager_0.1.172_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
