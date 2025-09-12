class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.141"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.141/code-aarch64-apple-darwin.tar.gz"
      sha256 "5a8be18100ad3cd8f2cc9cf6dc57cc290982ba262dde2d7537738095d449d0b8"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.141/code-x86_64-apple-darwin.tar.gz"
      sha256 "a5bc7030c1203497d298ca3a95e614074bdbd24df8c6dc4f816c33f0af599ae2"
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
