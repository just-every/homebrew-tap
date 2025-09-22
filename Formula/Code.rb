class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.156"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.156/code-aarch64-apple-darwin.tar.gz"
      sha256 "0d6e9ca1772942bdd7601d17a87f37f8224bab216c583b2e5f88b0bef905c9dd"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.156/code-x86_64-apple-darwin.tar.gz"
      sha256 "428c7d7ead9ad7c8d87429977520a9366012a40657244c49dae06d0f2cf81f9d"
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
