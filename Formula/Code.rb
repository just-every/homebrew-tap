class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.128"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.128/code-aarch64-apple-darwin.tar.gz"
      sha256 "1f33e90d37c6f91b2552678d755febc9a49b1bbb830e034f8054a826a2670e2e"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.128/code-x86_64-apple-darwin.tar.gz"
      sha256 "f3b6d9e1f91c72c726f8c864d193bcabc1b6efec1ee7405c27a6cf6d71dfc541"
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
