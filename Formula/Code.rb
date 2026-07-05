class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.140"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.140/code-aarch64-apple-darwin.tar.gz"
      sha256 "63db70215e3d21d120ba519904e22d82b8e9eac997f6532bfbd069c2a3796e3b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.140/code-x86_64-apple-darwin.tar.gz"
      sha256 "2cee442d1f53f543e4dcacd98b5de8c9c8e66360939a51fb82a70e26d0853b9b"
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
