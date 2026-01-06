cask "justevery-manager" do
  version "0.1.145"

  on_arm do
    sha256 "5c19c44baf589840ac840f019a11768a5ab68bba4ba5faf76b7fd6631ec2328c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.145/Every.Manager_0.1.145_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ad7aadfa07462b46a748b45df9afa52ec72256a8d2e57a16aed5f410adff5754"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.145/Every.Manager_0.1.145_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
