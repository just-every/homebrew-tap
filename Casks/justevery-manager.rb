cask "justevery-manager" do
  version "0.1.203"

  on_arm do
    sha256 "43e871f395ebb9011d5ad3d85ab89df874eac064d53d2f3aea420f16e0dc74a6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.203/Every.Manager_0.1.203_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b5a3966263583efdd32131355c510592ab760f0fa546fea44670d6f4ea9cdec7"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.203/Every.Manager_0.1.203_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
