cask "justevery-manager" do
  version "0.1.92"

  on_arm do
    sha256 "cc06589ab450b6308d8b65ff7ccf867a627b2924f367ea9e3e18bff607e3a03d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.92/Every.Manager_0.1.92_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "136e9db0b2aade905c69df99d7e306ee24435908d06249d9077d9b6256953797"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.92/Every.Manager_0.1.92_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
