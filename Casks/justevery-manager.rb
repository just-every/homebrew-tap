cask "justevery-manager" do
  version "0.1.175"

  on_arm do
    sha256 "4cb64c85c3b405df6ec0f3f7bc298aa71605679f26c633f9b52e16bad3176f04"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.175/Every.Manager_0.1.175_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "10e241250634a94788d9780943a219c14da9fb28aaeeecd101d8d7baf55b89d2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.175/Every.Manager_0.1.175_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
