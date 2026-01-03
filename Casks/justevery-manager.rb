cask "justevery-manager" do
  version "0.1.118"

  on_arm do
    sha256 "d651a1488a2ef8863109a3517b4250c4eadc6bb8c5c3ce4ad4540b53f7854f79"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.118/Every.Manager_0.1.118_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "2852de6f92dc0d7fde672da4526bb9df7d5b4a6be408f275d7c8f7ff2b64c473"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.118/Every.Manager_0.1.118_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
