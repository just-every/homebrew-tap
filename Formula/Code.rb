class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.185"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.185/code-aarch64-apple-darwin.tar.gz"
      sha256 "714d584d3bc37af90d95a920f1afe1931cf32301e0c0668959d891727bbe75c1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.185/code-x86_64-apple-darwin.tar.gz"
      sha256 "d33e63a68d17c29547bcfcc7bdbb5335135c0b2db92f4c2f9de5365074ac705f"
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
