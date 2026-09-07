class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.181"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.181/code-aarch64-apple-darwin.tar.gz"
      sha256 "05175caad97bb5ac4e2d33f0c643ff1361b134cc173a64357606bc80c9eebd65"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.181/code-x86_64-apple-darwin.tar.gz"
      sha256 "36651e0e281b2d9747a0b9fc58f350844ba649f596cfd95e91235630896271fa"
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
