cask "justevery-manager" do
  version "0.1.44"

  on_arm do
    sha256 "f11b0c7a48b350104172800dd5c7f64dd873a4051b3f86fa0e5a719a49f9f6a6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.44/Every.Manager_0.1.44_aarch64.dmg"
  end

  on_intel do
    sha256 "51f9d0358b62992b297899991f885978929e5de9e1af3f46af0af0859b876e6e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.44/Every.Manager_0.1.44_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
