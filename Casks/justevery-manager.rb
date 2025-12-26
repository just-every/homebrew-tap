cask "justevery-manager" do
  version "0.1.35"

  on_arm do
    sha256 "66c3d7cf7a60a6b9a8f51d190f0bb54b098a4567977288607051dbab0654becc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.35/Every.Manager_0.1.35_aarch64.dmg"
  end

  on_intel do
    sha256 "82da381c7a4247c2aa349b7b207c5fe80228d10778d2ce5f61b19304643cdfb2"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.35/Every.Manager_0.1.35_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
