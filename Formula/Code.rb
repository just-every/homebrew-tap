class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.78"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.78/code-aarch64-apple-darwin.tar.gz"
      sha256 "2707d2caa3aeeb39fd062c09e6e38baeb4fa4e8ce2272a7ff4cf7f787e154878"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.78/code-x86_64-apple-darwin.tar.gz"
      sha256 "6946dec71cbc661741a986e162c15f23d27b838481b4e263c5a9da80ccdec97d"
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
