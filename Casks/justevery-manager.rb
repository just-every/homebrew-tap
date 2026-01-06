cask "justevery-manager" do
  version "0.1.150"

  on_arm do
    sha256 "194d056b114bae82a7cb5c16a340c7673a3dc0825b934ebf9951816dc53ce793"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.150/Every.Manager_0.1.150_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7a54479e68a9fbc6c7f9b6eff01b18d42a19f31124354e680b50284975216ff3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.150/Every.Manager_0.1.150_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
