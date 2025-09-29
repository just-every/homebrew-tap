class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.175"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.175/code-aarch64-apple-darwin.tar.gz"
      sha256 "5cbc0ad712ef27dbd12a3894bf7a40ccd5fb2bd1cd8c68dcfaeb62ed7c58f93e"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.175/code-x86_64-apple-darwin.tar.gz"
      sha256 "be9e41beebde71f7ac232c9013c955cebbd51ab144e734f4171b2d59fb4d4c78"
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
