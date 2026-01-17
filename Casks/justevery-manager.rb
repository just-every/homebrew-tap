cask "justevery-manager" do
  version "0.1.188"

  on_arm do
    sha256 "6ef9cad086634610835afb4a5d027912c64585b59f21f1d4f48d9b8b38ad6daa"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.188/Every.Manager_0.1.188_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4189a3fa6fdb219c6944c597a5e9ae5c2d8199339e41509f9abc0db750ca088c"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.188/Every.Manager_0.1.188_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
