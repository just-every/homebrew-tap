class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.169"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.169/code-aarch64-apple-darwin.tar.gz"
      sha256 "165b390413c60b737e537f5c1b2838c7eed2d0f09a0b493555128215a2a06800"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.169/code-x86_64-apple-darwin.tar.gz"
      sha256 "70ad136c5330554555bdf288015fbbfaa5d6ab027e02a0c8f4152e4b194cdd4a"
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
