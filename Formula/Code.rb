class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.132"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.132/code-aarch64-apple-darwin.tar.gz"
      sha256 "72a73aef8d0aa68cf584fb26bae436b9153ab317d2493cdc2ff01ba3b63ec879"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.132/code-x86_64-apple-darwin.tar.gz"
      sha256 "967f7dac38e6018d83309c787b01aab5a3e0f8b4daae7e383a5340ac5056dee4"
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
