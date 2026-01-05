cask "justevery-manager" do
  version "0.1.135"

  on_arm do
    sha256 "02c537b295c16826a8838064a3750ef4944cb9900831e2a323359e15fc849c64"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.135/Every.Manager_0.1.135_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "8fd4fff99421ba3322784c1a9f13592c5a67af8272eb20e40b0f16e3524b9dbc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.135/Every.Manager_0.1.135_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
