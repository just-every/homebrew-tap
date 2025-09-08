class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.97"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.97/code-aarch64-apple-darwin.tar.gz"
      sha256 "ce5cdc648c964f3c428fa394db2854b6deb5e4e0b97de658ff2fcfaadd2bb0ee"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.97/code-x86_64-apple-darwin.tar.gz"
      sha256 "af2c40313fd09422c45061630a9b563740907cfe67331cad22f303d80c354e30"
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
