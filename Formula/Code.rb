class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.10"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.10/code-aarch64-apple-darwin.tar.gz"
      sha256 "a8325461fda4797c01ff9c1268260a65b68e7c004e461b6ec8224eecf99bd5e6"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.10/code-x86_64-apple-darwin.tar.gz"
      sha256 "3d170317ed25048ae303cda75d73a9f7861a83391fa806d3274f6fa525a9a371"
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
