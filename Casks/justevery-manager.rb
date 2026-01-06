cask "justevery-manager" do
  version "0.1.151"

  on_arm do
    sha256 "bbba17df0dbf5e77b0d49ce48f1cc38b43b33de06116ac9a093fa7c6b73c9cfb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.151/Every.Manager_0.1.151_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "5f199787093fdcb39a681fe54dced561b2a19dc3a27c4a25d3e0d04715d0f207"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.151/Every.Manager_0.1.151_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
