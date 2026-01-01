cask "justevery-manager" do
  version "0.1.116"

  on_arm do
    sha256 "d724cb2eef4434c5795a5cb65e1ffb69c1acc06d126f468cb18b7da4f6acde67"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.116/Every.Manager_0.1.116_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b89fd67d9db02ef45f3aca1cfc7f7e338fdaadb3e6ae38e08b851d0cdf812a8f"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.116/Every.Manager_0.1.116_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
