cask "justevery-manager" do
  version "0.1.112"

  on_arm do
    sha256 "b0ad23f11d3619002e8c2f1055c4da2c0ae294928eca69aed0a668cae1a5f4f8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.112/Every.Manager_0.1.112_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9eacb52a41acad34fd158c71febd52dfbe0cb402820a71e5133f745fe7e593d6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.112/Every.Manager_0.1.112_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
