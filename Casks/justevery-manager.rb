cask "justevery-manager" do
  version "0.1.43"

  on_arm do
    sha256 "7adf2950017a69cc327833f52f25b1ba01d4d351a68a2d26778630ef1dca2b61"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.43/Every.Manager_0.1.43_aarch64.dmg"
  end

  on_intel do
    sha256 "cea03d952f117dc3baff27177361d6c8614f629e6d7a3b49b5811bd203933690"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.43/Every.Manager_0.1.43_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
