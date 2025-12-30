class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.21"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.21/code-aarch64-apple-darwin.tar.gz"
      sha256 "d4b8bc673d395f7fd56a30a6551b59df6cdb3e85c9da44c55856e40488bb9c2f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.21/code-x86_64-apple-darwin.tar.gz"
      sha256 "944acdf7f8b3b09d980f4207cc902b7b06290d5c567bb56c9260ff35ead3c165"
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
