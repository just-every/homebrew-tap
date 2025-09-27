class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.170"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.170/code-aarch64-apple-darwin.tar.gz"
      sha256 "1275d1ba57ce16f77469b7815f24a639a2dc1ce1a0e99f1c4bf775cfe0e01931"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.170/code-x86_64-apple-darwin.tar.gz"
      sha256 "5a2d49fbb6896f9f5940a312af0feec4be7af41260243694f63fd4d8b2de5d10"
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
