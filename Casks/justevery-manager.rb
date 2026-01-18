cask "justevery-manager" do
  version "0.1.200"

  on_arm do
    sha256 "8765ac690ed4c3501f606868d2b889afa1ec3d9073673971630d742a0a45568e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.200/Every.Manager_0.1.200_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7696ecb920e6dd91041f97fdad59e7402f781a17d4a085965caf8da6f45d6872"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.200/Every.Manager_0.1.200_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
