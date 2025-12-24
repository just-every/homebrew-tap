cask "justevery-manager" do
  version "0.1.19"

  on_arm do
    sha256 "f96c7af29b368995529b023e8c2d8f996ad0d2107c838968582955081b0549d6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.19/Every.Manager_0.1.19_aarch64.dmg"
  end

  on_intel do
    sha256 "9cf1282bc9e652ff246d518c3ea7bb1b81acf51f9396d0312344878e3e567b1c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.19/Every.Manager_0.1.19_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
