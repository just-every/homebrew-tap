cask "justevery-manager" do
  version "0.1.140"

  on_arm do
    sha256 "d5d38509952d1e23e58067ef393c99de2263f26446141c035bb8da79b273968a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.140/Every.Manager_0.1.140_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6afa28df6e87cd78d253ae872bc0731c52caf8881c62adcf9dfa4b10a9be731a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.140/Every.Manager_0.1.140_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
