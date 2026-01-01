cask "justevery-manager" do
  version "0.1.100"

  on_arm do
    sha256 "f2a25233f6389144e3f898c9eca646b227585db8d5e59de7c60c269444f0c6dd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.100/Every.Manager_0.1.100_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "26ba168af91681019091c57a7747af07f7b4d60dfa590775b8efe3e6694199d9"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.100/Every.Manager_0.1.100_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
