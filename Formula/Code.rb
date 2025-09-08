class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.87"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.87/code-aarch64-apple-darwin.tar.gz"
      sha256 "56c97fcb6d76d3046f0406a5f51a3cea5228c1be81a2b158460821fb969a4c75"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.87/code-x86_64-apple-darwin.tar.gz"
      sha256 "e9bb3f286d6c707bbbdc060684e3bfdd7d7ad70cef3906c620c585d3841f00a6"
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
