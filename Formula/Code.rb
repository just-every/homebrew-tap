class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.172"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.172/code-aarch64-apple-darwin.tar.gz"
      sha256 "e878b0483e589e1da22a35048012c481b4eb7436856cddaeaadfbb84119c52e7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.172/code-x86_64-apple-darwin.tar.gz"
      sha256 "32ad50f3da386130f76215cb50156eea62548011c87a40195f2797ae96fc8c75"
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
