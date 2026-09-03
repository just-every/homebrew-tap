class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.179"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.179/code-aarch64-apple-darwin.tar.gz"
      sha256 "ef615527d25c9a0583e5fd5ca279982dd3dce4709653b77f42fa6bc6307c0721"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.179/code-x86_64-apple-darwin.tar.gz"
      sha256 "f7fd19706878c976bcfe0010aa4c1d0e6638babeac7586c4a4dc4cface4dd249"
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
