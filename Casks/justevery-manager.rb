cask "justevery-manager" do
  version "0.1.76"

  on_arm do
    sha256 "5a5a1af2d34ea735624df3bd595379965dd0659faede791a88e08a0ff0637b87"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.76/Every.Manager_0.1.76_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "a95c681254be3e6ef72dd938912dd48998835b108f46223d6f816c2d8349d304"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.76/Every.Manager_0.1.76_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
