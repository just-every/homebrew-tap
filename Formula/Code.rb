class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.176"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.176/code-aarch64-apple-darwin.tar.gz"
      sha256 "1ba0b8dfd90f6098d0abd08f6ffb7ed9ce84b8b46f084abab95d7fdef77b99ce"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.176/code-x86_64-apple-darwin.tar.gz"
      sha256 "dda0ca2aea886305824acee669dcc0a7fbd7837a6a06ab9487a64d53c9a36892"
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
