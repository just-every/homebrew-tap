cask "justevery-manager" do
  version "0.1.38"

  on_arm do
    sha256 "ef2b2c37b85cc129d2105e3c6ffc25c3aa278f6b8ec7168f6f9a9457ae22a6a4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.38/Every.Manager_0.1.38_aarch64.dmg"
  end

  on_intel do
    sha256 "4bb370a89781b4578b76dd9e00c0d850e780ff66ac056b516db9fcd070e52438"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.38/Every.Manager_0.1.38_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
