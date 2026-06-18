class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.123"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.123/code-aarch64-apple-darwin.tar.gz"
      sha256 "701bb0430e82b2677511801ea79c05f3be77560c5d8b6cc7e9f27cd1418979a4"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.123/code-x86_64-apple-darwin.tar.gz"
      sha256 "c353ee8637739df17f6a896beecc1e4d61d42b21d123cc15a6c526e186540c96"
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
