class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.190"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.190/code-aarch64-apple-darwin.tar.gz"
      sha256 "eacb0f13aa7232d0e73099e3e79b8b2fbe67c92518d0b55d78580dc121d5b76b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.190/code-x86_64-apple-darwin.tar.gz"
      sha256 "f7d634e2ff3be556ba0cc4736a8695b2b30bfbcfbd1d2cdcc35b3302eb204c8d"
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
