cask "justevery-manager" do
  version "0.1.153"

  on_arm do
    sha256 "aa39a4f3412701b4a82140989d5c81e40eb58b167e3e156089c69b2fd8eb0ea0"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.153/Every.Manager_0.1.153_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "444211ef195eef471163b3829978862739a6e8f76fd9b4252b04cd8d7394bfaa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.153/Every.Manager_0.1.153_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
