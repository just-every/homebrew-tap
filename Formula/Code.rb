class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.64"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.64/code-aarch64-apple-darwin.tar.gz"
      sha256 "7ea99d0bb3d388364b3a2456c4b5ef0f53c4bef5d914d9b9f6d51cf4216bce12"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.64/code-x86_64-apple-darwin.tar.gz"
      sha256 "78ec83bb299dd474b2d6b1837ba2ef965b88f1a5d6238486e4fcfc665d015e4f"
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
