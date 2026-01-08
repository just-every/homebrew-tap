cask "justevery-manager" do
  version "0.1.154"

  on_arm do
    sha256 "f211de70ad843257300d9da75e911b40781e771349cf82744dc3bd7f7e169ac4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.154/Every.Manager_0.1.154_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "fd8830ede5239a453f941342f8b3f3e75bfb3264bc4ee153823cd1a3c5a250ca"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.154/Every.Manager_0.1.154_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
