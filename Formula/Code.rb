class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.85"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.85/code-aarch64-apple-darwin.tar.gz"
      sha256 "ef01189d4962fcc83c737ebd6dc9b22970a7a33ac696c12d109cc68687384ee1"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.85/code-x86_64-apple-darwin.tar.gz"
      sha256 "6be21e08c397829341decf386e8a59fce30ff4462715ded428fd8342d2eaaaf8"
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
