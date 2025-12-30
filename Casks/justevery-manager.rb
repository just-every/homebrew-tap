cask "justevery-manager" do
  version "0.1.50"

  on_arm do
    sha256 "0689027988b7d39d1d42628b9091720e973cf2edecf0cce3c943176a4fe15b80"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.50/Every.Manager_0.1.50_aarch64.dmg"
  end

  on_intel do
    sha256 "ed04f9e05d281cd349f44e5bd56de153295ef0e9e4cd87d7c645e264a59adaab"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.50/Every.Manager_0.1.50_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
