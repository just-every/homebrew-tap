cask "justevery-manager" do
  version "0.1.78"

  on_arm do
    sha256 "ce31ef5f6cd70d1e67f1105fe37cf74cb6619a4b5299c26c389178968c7f62ad"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.78/Every.Manager_0.1.78_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6b49b8d3d7e71d1ce2eb65817de38d0d37263a70f171c4b8aef69b78bb239171"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.78/Every.Manager_0.1.78_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
