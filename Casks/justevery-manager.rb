cask "justevery-manager" do
  version "0.1.125"

  on_arm do
    sha256 "7a762b7982133556d50b861e0de72db719941c2ff1bcdc36eaf4f873e9c54d30"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.125/Every.Manager_0.1.125_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "8bfb0f6df54c6a1fdec702d0c9f471373662758f8ab74e1a2b73d5ae6c7cb6ca"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.125/Every.Manager_0.1.125_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
