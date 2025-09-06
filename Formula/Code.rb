class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.73"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.73/code-aarch64-apple-darwin.tar.gz"
      sha256 "92f0986d66a1fb93bd61f1534b489f69cb0d20552503330b820773e8530c6627"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.73/code-x86_64-apple-darwin.tar.gz"
      sha256 "868229126e9a49827ed735a50f2871691ad6aa49b53c41850792d9ecf1274a14"
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
