cask "justevery-manager" do
  version "0.1.139"

  on_arm do
    sha256 "ee7c02cb0cd07b6b3479f0d60a5a92b74190e6182fe9906ce21cfea1cfe6d7ee"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.139/Every.Manager_0.1.139_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9911170d05b202bc51939a84f8108e2ca262142388b856ef8b7bac7b14d0a99d"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.139/Every.Manager_0.1.139_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
