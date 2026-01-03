cask "justevery-manager" do
  version "0.1.121"

  on_arm do
    sha256 "f0f594328147f08bdfae0f8d780fc9c66ef58f532a89a95021e2e86416df64ce"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.121/Every.Manager_0.1.121_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ab1c6a811cb7b441312b5d7004d2cd261da0647eb603a6e96943c9759200f9af"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.121/Every.Manager_0.1.121_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
