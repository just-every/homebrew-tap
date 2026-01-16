cask "justevery-manager" do
  version "0.1.182"

  on_arm do
    sha256 "da24a234b12ab3612d9dbcd93eab5178ce8dd43952a280f406ed0b1a1a216141"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.182/Every.Manager_0.1.182_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "aefb0ad016327a088a5a69a892216ff0067ea8ac4781e9c3c6311eca4b264fe3"
    url "https://manager.justevery.com/marketing/agent-release/agent-v0.1.182/Every.Manager_0.1.182_x64.dmg"
  end

  name "Every Manager"
  desc "Every Manager desktop app"
  homepage "https://github.com/just-every/manager"

  app "Every Manager.app"
end
