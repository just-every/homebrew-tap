class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.12"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.12/code-aarch64-apple-darwin.tar.gz"
      sha256 "71e34ce07ce3fa5aafb0548cd120c2d4bce8e25a278d7294bc7324f586f5dd99"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.12/code-x86_64-apple-darwin.tar.gz"
      sha256 "234ca5222fc81b49f9c11a1520f2c041fdffca691921323a87ff99373b001e84"
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
