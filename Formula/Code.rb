class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.69"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.69/code-aarch64-apple-darwin.tar.gz"
      sha256 "9f0aad92e5e29674089e52c3d060eb299d3333ca352ecc1efff6a62fa87e7b00"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.69/code-x86_64-apple-darwin.tar.gz"
      sha256 "6114086ebe1a3198da01f16e6885b5384f3e46ebde57715586c115589534ebf4"
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
