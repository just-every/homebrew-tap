cask "justevery-manager" do
  version "0.1.171"

  on_arm do
    sha256 "3538cd8f340e892683eaafb9d66f7c694c63211fc781c2c6c4732a3a3a42db4c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.171/Every.Manager_0.1.171_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "58cf3f6bd042f404fc44ac486472a63b35f3c0b2bfa7d375e5e78c4fda772695"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.171/Every.Manager_0.1.171_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
