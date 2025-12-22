cask "justevery-manager" do
  version "0.1.3"

  on_arm do
    sha256 "cda8bc97171dd826292038546b889d27cfa605b24b008d72a817e76402e4ecb6"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.3/Every.Manager_0.1.3_aarch64.dmg"
  end

  on_intel do
    sha256 "361d2e6782e8ec3a757223ef621a9eec98b62d3dec63bb8cb021e53a5a6d7058"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.3/Every.Manager_0.1.3_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
