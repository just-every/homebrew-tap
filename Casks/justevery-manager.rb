cask "justevery-manager" do
  version "0.1.26"

  on_arm do
    sha256 "d5293004c1c3b833350c676716cdf493cef252a44ec32ef3bd66a1d9ae5987e1"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.26/Every.Manager_0.1.26_aarch64.dmg"
  end

  on_intel do
    sha256 "d0cd63c206cf8448a55283f6c4001135362e528077ca142539ed6ce65c8854c5"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.26/Every.Manager_0.1.26_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
