cask "justevery-manager" do
  version "0.1.128"

  on_arm do
    sha256 "933deee953793f4c03d7598d851631e883798b1398fc488398c0644677fe300b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.128/Every.Manager_0.1.128_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "30eb60048601f7a1eda1a2cd36318fda56b7a00605feb497aebb05dc6b6fbaeb"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.128/Every.Manager_0.1.128_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
