class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.160"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.160/code-aarch64-apple-darwin.tar.gz"
      sha256 "00e71740b77db538761659bc9bc3e8ba197524467da89d84253487a7fa8d5666"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.160/code-x86_64-apple-darwin.tar.gz"
      sha256 "b74621a899223d45ac7c8febc929d0dcf862a96551b3facf963ab4b94cd614b4"
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
