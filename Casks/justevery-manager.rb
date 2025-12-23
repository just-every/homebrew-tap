cask "justevery-manager" do
  version "0.1.6"

  on_arm do
    sha256 "cae66d5451f57607cecbf749ae30a26112f33ad58e15f32ae586b6b281387aa6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.6/Every.Manager_0.1.6_aarch64.dmg"
  end

  on_intel do
    sha256 "ef3b3c798ebd9c8025356ac30ea86c8d34ab9a9079c52bc2d91a4fcf33927923"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.6/Every.Manager_0.1.6_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
