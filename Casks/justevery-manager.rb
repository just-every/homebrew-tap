cask "justevery-manager" do
  version "0.1.162"

  on_arm do
    sha256 "1d1842c4c7406c8f83dc13641a993016b915eed430c10afffada6390d9e1ef8c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.162/Every.Manager_0.1.162_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ab7b7b78605d28b8a044c33a7859cac9d69e4cb4d9dc0d1f0db6188452b54a7b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.162/Every.Manager_0.1.162_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
