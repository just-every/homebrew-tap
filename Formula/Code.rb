class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.181"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.181/code-aarch64-apple-darwin.tar.gz"
      sha256 "1ad7ac2e09468164d60f645914322ff4c30d46b7a0b71b0a1ae5c681edc74605"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.181/code-x86_64-apple-darwin.tar.gz"
      sha256 "3236ef2a55a51107676ec410681d2cf6691c93a05828bec5d58d59ae80261b35"
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
