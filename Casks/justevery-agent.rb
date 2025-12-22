cask "justevery-agent" do
  version "0.1.2"

  on_arm do
    sha256 "b726c22d1f7b245c52d495639906e6f65054b34f16a39d202d2a6b3df64afa32"
    url "https://github.com/just-every/manager/releases/download/agent-v0.1.2/JustEvery.Agent_0.1.0_aarch64.dmg"
  end

  on_intel do
    sha256 "44719a98cea6886aa749b3eebf66f85a80b0eb999a26820a2a2ef75016d83a01"
    url "https://github.com/just-every/manager/releases/download/agent-v0.1.2/JustEvery.Agent_0.1.0_x64.dmg"
  end

  name "JustEvery Agent"
  desc "JustEvery desktop agent"
  homepage "https://github.com/just-every/manager"

  app "JustEvery Agent.app"
end
