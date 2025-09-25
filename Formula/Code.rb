class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.166"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.166/code-aarch64-apple-darwin.tar.gz"
      sha256 "769937fbba7a561bc265d9265081cb59a55d3116c7d22294b67336d7f547970e"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.166/code-x86_64-apple-darwin.tar.gz"
      sha256 "3823024d674b629a91baf79194b7db3cdffab3ae26911b6a88ab93c255a12971"
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
