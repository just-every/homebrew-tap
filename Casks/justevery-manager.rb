cask "justevery-manager" do
  version "0.1.215"

  on_arm do
    sha256 "9503f26c141bd924abe48eb06c228fd3a72ff06486a1f1a07abdc557e7b88a63"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.215/Every.Manager_0.1.215_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b9e3ad3944da86ef1ce6b76a47e00018fed795454e20f26c853144569c4c414c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.215/Every.Manager_0.1.215_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
