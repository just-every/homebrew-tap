cask "justevery-manager" do
  version "0.1.69"

  on_arm do
    sha256 "1d8ab3e2a78a11fb9bb64eb2bcd4bed6916043234676fdc5478b0598b2960f48"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.69/Every.Manager_0.1.69_aarch64.dmg"
  end

  on_intel do
    sha256 "75c700a6c2660422bab81bf7528663e225bc4a679619ed3cae2dbdc2928d98bc"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.69/Every.Manager_0.1.69_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
