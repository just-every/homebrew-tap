cask "justevery-manager" do
  version "0.1.9"

  on_arm do
    sha256 "f1b800b15d8ee049db5f7942f794a8642893dcca99532c45efc19d76badee004"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.9/Every.Manager_0.1.9_aarch64.dmg"
  end

  on_intel do
    sha256 "65f2a68fad4ec3233cba198d86341874debd54194c46a61fdf29018a4b3294d4"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.9/Every.Manager_0.1.9_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
