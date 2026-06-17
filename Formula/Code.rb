class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.122"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.122/code-aarch64-apple-darwin.tar.gz"
      sha256 "9c8a690a7da35832c164cceadea2c567d4a7aa7ef31cc9bd2a0aa28bd14df6c8"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.122/code-x86_64-apple-darwin.tar.gz"
      sha256 "b3e6d934c285eb154167f0c6b1aaf6a0f9948e9feebfc7093c4e0e66b0ee6bbf"
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
