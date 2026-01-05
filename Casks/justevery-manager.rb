cask "justevery-manager" do
  version "0.1.134"

  on_arm do
    sha256 "790a2401a24a6ae07fe4e9241b162f81dbd79013775c2948c8e6472aaf906402"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.134/Every.Manager_0.1.134_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b1828b1b9195c04c9ee8beb0c5b4041d5fbf338b7a3a47012f59312c2df41656"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.134/Every.Manager_0.1.134_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
