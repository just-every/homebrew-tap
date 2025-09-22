class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.159"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.159/code-aarch64-apple-darwin.tar.gz"
      sha256 "5d3c2c6f07004b6e4d8e39aeb68d8ca2b5c2c3f9af54e0108a38eae2684c13fd"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.159/code-x86_64-apple-darwin.tar.gz"
      sha256 "3df90aa8b12ad0635923cde1ca4b75cf4ae58e2efd113e09aab8750ec9a1ea9c"
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
