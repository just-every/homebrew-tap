class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.42"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.42/code-aarch64-apple-darwin.tar.gz"
      sha256 "5a29428b4d50326329c8e8768dded3e2b1b88c3c84206d50c9690bf4d74c814b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.42/code-x86_64-apple-darwin.tar.gz"
      sha256 "38a0f2418c0d1d8614d128a8f3b22c8b7b72022a1606759c1e0c7c84331b6e70"
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
