class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.173"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.173/code-aarch64-apple-darwin.tar.gz"
      sha256 "b5a18dc61439ce85ff1ffcd4526e387e7de5de726bb84049c4f998fc89877771"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.173/code-x86_64-apple-darwin.tar.gz"
      sha256 "2b80d94ac6011087b18c7b4df7a5258a5abc722f43032825cf350c709f61576c"
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
