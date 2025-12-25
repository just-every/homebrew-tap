cask "justevery-manager" do
  version "0.1.32"

  on_arm do
    sha256 "dd65433b0bed62c01c9516d209d680a5fdea779a9e419e08c7bced6832a37117"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.32/Every.Manager_0.1.32_aarch64.dmg"
  end

  on_intel do
    sha256 "1920feae0dd075eac065e9ce7cae43153f89adfc7c501092bbd9b7a34443042a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.32/Every.Manager_0.1.32_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
