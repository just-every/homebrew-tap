cask "justevery-manager" do
  version "0.1.11"

  on_arm do
    sha256 "946c9b69727597ea9c7d8f6a4940f23107878f979f7cf320a1f3491fb4280824"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.11/Every.Manager_0.1.11_aarch64.dmg"
  end

  on_intel do
    sha256 "7ca23b388ba34f217f6e686a2074562a4be99fef75d5350c99b16c8014bdc92d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.11/Every.Manager_0.1.11_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
