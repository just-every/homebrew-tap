cask "justevery-manager" do
  version "0.1.189"

  on_arm do
    sha256 "426fd4e39590a191450ae3f86f99d37617606ad914a5e29aec6802c705420a76"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.189/Every.Manager_0.1.189_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "cac2a71df5e7951d6742986c11f2a046ec9cca923c6dacce01f99a59882d8e38"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.189/Every.Manager_0.1.189_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
