cask "justevery-manager" do
  version "0.1.146"

  on_arm do
    sha256 "bfd00c0284527ec6dc523656f9d47508433a046d6588bef607bf7b45638b6856"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.146/Every.Manager_0.1.146_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "0afd9bccb0506c33098daef21a37f26e3fc0e42465af65db7cca4a05ec1b9ed6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.146/Every.Manager_0.1.146_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
