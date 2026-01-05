cask "justevery-manager" do
  version "0.1.132"

  on_arm do
    sha256 "2cabadb91199d2643dccd0357f63f15bf04c86bae87b97dd77b86e04891e14ba"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.132/Every.Manager_0.1.132_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "8e17432d25961d00a5a00388a0f649572c39924122b89c339e78dfac4f7900fe"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.132/Every.Manager_0.1.132_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
