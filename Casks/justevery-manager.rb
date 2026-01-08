cask "justevery-manager" do
  version "0.1.158"

  on_arm do
    sha256 "47fcba879e21a4776b9082534f435899622ba3f613ec3fbd7f25355c33c7121c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.158/Every.Manager_0.1.158_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6e6f2c90d3f8eebf67f6ffb34d1987561bcf3d62ed970d91e9dfdb7bb0d7be56"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.158/Every.Manager_0.1.158_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
