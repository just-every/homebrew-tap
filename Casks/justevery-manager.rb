cask "justevery-manager" do
  version "0.1.22"

  on_arm do
    sha256 "f69bc2fa8e35d9826a7ee53a54bf37d9aa841af9f6820196c8d6f38fde31b424"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.22/Every.Manager_0.1.22_aarch64.dmg"
  end

  on_intel do
    sha256 "e5340c225c1e6f4f814883a675c0e5fd78703d4f06501f891954d73e5d201d90"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.22/Every.Manager_0.1.22_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
