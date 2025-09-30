class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.178"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.178/code-aarch64-apple-darwin.tar.gz"
      sha256 "66bed49741a01f1902b4b91920fe8a50bb4b9f7f101d27508ecf5da2e2d83012"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.178/code-x86_64-apple-darwin.tar.gz"
      sha256 "bbc14c12f65b8014395f14bf24e9e06fce821e342bdd7e4867ed6255ad1ac3d0"
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
