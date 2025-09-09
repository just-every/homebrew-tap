class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.100"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.100/code-aarch64-apple-darwin.tar.gz"
      sha256 "ce5c96ce76e07ef616c5a9b2d80da6f16d90c65eff90730bc227011e1aaf354e"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.100/code-x86_64-apple-darwin.tar.gz"
      sha256 "cabde63e4a97dded5714e1829ddbc573bf47b3a358859b4fec98ee68ace764a3"
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
