cask "justevery-manager" do
  version "0.1.21"

  on_arm do
    sha256 "24ec10720545939777dc06689bc3041444804a1d7d388473a34dd20ac379de84"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.21/Every.Manager_0.1.21_aarch64.dmg"
  end

  on_intel do
    sha256 "b93541502f8bedf069f6ab0a5c908d5c9aee06bc6b104b1c80be3783d56ab896"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.21/Every.Manager_0.1.21_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
