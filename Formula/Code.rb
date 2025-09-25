class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.163"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.163/code-aarch64-apple-darwin.tar.gz"
      sha256 "690bb7c5a9dc9dd9c9e3e62f399198000fbcb6ba5dcdf62649cca2a84deadd6a"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.163/code-x86_64-apple-darwin.tar.gz"
      sha256 "7f154e16c35565bcdd1ce940b7ef8aef75a1a1421ca7f6da0440b16fcffb4992"
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
