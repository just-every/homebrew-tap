class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.170"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.170/code-aarch64-apple-darwin.tar.gz"
      sha256 "e157b2e81369669f4d242116bfb24cf84d34515b8166604806cefde82af37f17"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.170/code-x86_64-apple-darwin.tar.gz"
      sha256 "d28e3ed778cf1de93ae3e35daba4d28edbccadff418e93e8c0a36bf4abbdf57c"
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
