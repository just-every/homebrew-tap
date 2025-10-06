class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "7a0411587354ac5848bacb56ad47477851f18d91abb42da6c5241efa2e6cccbd"
    else
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "96acd0f923c9669e4aa143bddf511004ff53edb0889382cb5f9046c1d4e886bf"
    end
  end

  def install
    bin.install Dir["code-*"].first => "code"
    # Provide a compatibility shim
    (bin/"coder").write <<~EOS
      #!/bin/bash
      exec "#{bin}/code" "$@"
    EOS
  end

  test do
    system "#{bin}/code", "--help"
  end
end
