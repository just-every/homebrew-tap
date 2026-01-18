cask "justevery-manager" do
  version "0.1.197"

  on_arm do
    sha256 "a3f95a7648271940fceb382b2b21b48e1d3d6b3356ad173a06fda9d2219a0b76"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.197/Every.Manager_0.1.197_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6ef79279e55bb9d1c3872d091a0198c3e54a01d50a092c659880131e84458383"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.197/Every.Manager_0.1.197_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
