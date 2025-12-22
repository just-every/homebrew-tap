cask "justevery-manager" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2,0.1.0" # tag, artifact version
  sha256 arm: "b726c22d1f7b245c52d495639906e6f65054b34f16a39d202d2a6b3df64afa32",
         intel: "44719a98cea6886aa749b3eebf66f85a80b0eb999a26820a2a2ef75016d83a01"

  url "https://manager.justevery.com/marketing/agent-release/agent-v#{version.csv.first}/JustEvery.Agent_#{version.csv.second}_#{arch}.dmg"

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
