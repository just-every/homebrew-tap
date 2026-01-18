cask "justevery-manager" do
  version "0.1.210"

  on_arm do
    sha256 "92db00a064ee8d4b78d03aa5f681087bcfc90fb26ce7744b5ee070b5ad42b1f6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.210/Every.Manager_0.1.210_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d2868df70c100f92f9be69409a423c238f1a8b6cc6db04ff81244620c2794801"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.210/Every.Manager_0.1.210_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
