cask "justevery-manager" do
  version "0.1.133"

  on_arm do
    sha256 "9433e8394a382c314f962ce16437d9963dffa5a48abc437d4aa51c8036f4cf36"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.133/Every.Manager_0.1.133_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "fa6caf0538c5293c19a29ae824905764ab946ab6e7da905a044411b044671f49"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.133/Every.Manager_0.1.133_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
