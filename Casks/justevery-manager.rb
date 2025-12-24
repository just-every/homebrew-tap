cask "justevery-manager" do
  version "0.1.16"

  on_arm do
    sha256 "0771043ee848279406b83e29c3f6fbe8c8f34c20b222fa82936b89ade1df1527"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.16/Every.Manager_0.1.16_aarch64.dmg"
  end

  on_intel do
    sha256 "8ac0fe07e8ec831912299fd6b2056ae9768bab6cf81109ae1543a887c36ecd57"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.16/Every.Manager_0.1.16_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
