cask "justevery-manager" do
  version "0.1.96"

  on_arm do
    sha256 "33a60efdbbe4621f5380039ac8c79334a87882d500e5872cf3ba5e4de32605ef"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.96/Every.Manager_0.1.96_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "be054a8ee7b10a9794967db1ee2f9e25822abfe6fb363c77d3f459ae78f5cb45"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.96/Every.Manager_0.1.96_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
