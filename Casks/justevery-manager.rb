cask "justevery-manager" do
  version "0.1.216"

  on_arm do
    sha256 "7799bfb62605ef61b3aca9dbcbe454d37ace8e749b535c41942e5dc2f0552071"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.216/Every.Manager_0.1.216_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4c3250e1354dc39d38bc88d77256cff4408a24446b9cc2179320afb8a210b21b"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.216/Every.Manager_0.1.216_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
