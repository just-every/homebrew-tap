cask "justevery-manager" do
  version "0.1.148"

  on_arm do
    sha256 "674e416d52eb6b091427ff082c17b97feeb2500ecc8331da84370acccffd6a1a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.148/Every.Manager_0.1.148_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "2f83135bcdc9a4ecbf271c1fd6c63ebae4ebbe01e34bcb67f1aed1c3a8beba16"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.148/Every.Manager_0.1.148_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
