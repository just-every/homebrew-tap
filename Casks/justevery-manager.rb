cask "justevery-manager" do
  version "0.1.41"

  on_arm do
    sha256 "5a90f36a346dcfbcfde954d86f7b838e73c78766be59bf3f5ef35ecde0429e81"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.41/Every.Manager_0.1.41_aarch64.dmg"
  end

  on_intel do
    sha256 "4a21f4f152bf9cee669aec76672e844f17ad8447c16d5312c87a5bebb5493f6a"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.41/Every.Manager_0.1.41_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
