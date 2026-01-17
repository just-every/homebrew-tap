class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.49"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.49/code-aarch64-apple-darwin.tar.gz"
      sha256 "e75c88dcc061d8400e1bda3c37a00047697594492d75d88d390de49687830475"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.49/code-x86_64-apple-darwin.tar.gz"
      sha256 "bb7b1b2edcf7f6a7e8ba517735830e8b442b8f2fc306a2b5f806dcd5a9947add"
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
