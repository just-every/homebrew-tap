cask "justevery-manager" do
  version "0.1.186"

  on_arm do
    sha256 "db912ec9bc0119e720d238e7e0fb0d233f72e941fe356eeea961bb83796f137e"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.186/Every.Manager_0.1.186_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "55393156627f94b4639bd7d83ac8a0295e23fee51324c733bd302efa1a687727"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.186/Every.Manager_0.1.186_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
