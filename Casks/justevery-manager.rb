cask "justevery-manager" do
  version "0.1.56"

  on_arm do
    sha256 "8d00d6d582499351f126d2fedd5e870c4b32a92d9cd6f22cc8d04da99e531326"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.56/Every.Manager_0.1.56_aarch64.dmg"
  end

  on_intel do
    sha256 "10eaa6fee4655f638a905f6a7d5d35e6765d84830d34a3eac8bbffe90076e53c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.56/Every.Manager_0.1.56_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
