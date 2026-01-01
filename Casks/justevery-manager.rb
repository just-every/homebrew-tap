cask "justevery-manager" do
  version "0.1.94"

  on_arm do
    sha256 "76d860c9e31ee009845bc63f431d9a4a7e2628ddd0a95b99e4c3036dd1e68bfd"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.94/Every.Manager_0.1.94_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ebc6e1c7d48bd91976181fb18b5f96eaf96b4ec3538a4f6b249c41bd44e8a3fc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.94/Every.Manager_0.1.94_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
