cask "justevery-manager" do
  version "0.1.63"

  on_arm do
    sha256 "5a054cf6ac49bd9ba59142fc4cc762877932158fb93ad25c5409c8dbeb590bfd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.63/Every.Manager_0.1.63_aarch64.dmg"
  end

  on_intel do
    sha256 "2989157f1cce9122a2e8af63270aa7465910cc7cef24c82f9b478edd1b5219ba"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.63/Every.Manager_0.1.63_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
