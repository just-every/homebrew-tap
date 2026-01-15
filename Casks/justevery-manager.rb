cask "justevery-manager" do
  version "0.1.177"

  on_arm do
    sha256 "fc0437c92db5acb3d84bf75420afa22c4620afad2204db1f3981fe97386ab8f4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.177/Every.Manager_0.1.177_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d8612a51a048f85fba94aa070c63ee1046e2375832446d7486d94108176c3f84"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.177/Every.Manager_0.1.177_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
