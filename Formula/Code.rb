class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.72"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.72/code-aarch64-apple-darwin.tar.gz"
      sha256 "32b5d4357f747560e01e665d3bba1c1ce4271ab8a3b264a63559bd30fbcd07c7"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.72/code-x86_64-apple-darwin.tar.gz"
      sha256 "09595dad23b7b3a57f803733c9bdf10e727c3a4ef8d75a14607f737b8a5623a6"
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
