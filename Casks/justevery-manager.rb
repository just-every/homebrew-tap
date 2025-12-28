cask "justevery-manager" do
  version "0.1.46"

  on_arm do
    sha256 "c04ab21f6af0139e926e9708cb4888c7353035ec2271d93d99b0a00881510edd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.46/Every.Manager_0.1.46_aarch64.dmg"
  end

  on_intel do
    sha256 "37407a9858fcc7e7a98abb2ca28866f5e07f1ff8a0fafff92589d995eccbf09d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.46/Every.Manager_0.1.46_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
