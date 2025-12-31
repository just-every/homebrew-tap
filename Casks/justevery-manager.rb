cask "justevery-manager" do
  version "0.1.75"

  on_arm do
    sha256 "3a49e015c18df094bf72a4494a9301547fed3e0f0cb3f36519267e935b575eb8"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.75/Every.Manager_0.1.75_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "a4f911d272843f4e13f263c2da570cee30621ad680fbeba8771057b317e5824b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.75/Every.Manager_0.1.75_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
