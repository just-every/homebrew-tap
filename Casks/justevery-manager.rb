cask "justevery-manager" do
  version "0.1.181"

  on_arm do
    sha256 "190bcebe23fd16ac0d74be44c302801d7bd6c0438c1d951f382eaf5d220080e1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.181/Every.Manager_0.1.181_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "cb2fe59d28e96b917e15c8d3bd847b327775715a5c954454f52969ac7acf1687"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.181/Every.Manager_0.1.181_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
