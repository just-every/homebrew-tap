class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.63"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.63/code-aarch64-apple-darwin.tar.gz"
      sha256 "3de6d6acb0b920e387002a34db746b37b105113fb225fe72be88222a3f4ba7aa"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.63/code-x86_64-apple-darwin.tar.gz"
      sha256 "da504106b52fb1f55ecc99b8b4729e22526a5c9ade4d8ef94acc2cd177b1757f"
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
