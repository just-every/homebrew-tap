cask "justevery-manager" do
  version "0.1.82"

  on_arm do
    sha256 "f0e3601fda933fc57454834e0f7acbcbefaa9db124b696b591da35377c405b7b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.82/Every.Manager_0.1.82_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7ffab08b2ef8afca43f105acffbcf31c9393b402e8b8ea348d5167570290d89a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.82/Every.Manager_0.1.82_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
