cask "justevery-manager" do
  version "0.1.87"

  on_arm do
    sha256 "bbb83c2ebcab023420406e4317ea7e94c5e5e00cb2fde00343651a0dd6fedd53"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.87/Every.Manager_0.1.87_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "0056539fa595ae0a14ff0e96100ad9db75d09603fd12aa2690ac7025c6d05e32"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.87/Every.Manager_0.1.87_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
