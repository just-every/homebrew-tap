cask "justevery-manager" do
  version "0.1.214"

  on_arm do
    sha256 "1dd2b0c2365b9ed6f9b38ca2ec163136c9842f2c8c924ea2626717355abe103c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.214/Every.Manager_0.1.214_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "509a7a20c4232f4a883a413201507ed9558a27673499cb2fd5e5bf7cf3b43473"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.214/Every.Manager_0.1.214_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
