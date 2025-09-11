class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.125"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.125/code-aarch64-apple-darwin.tar.gz"
      sha256 "2c304b0c097dfef5929c0016fccd482c02a4fbff396bd239fab0bca239277b2f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.125/code-x86_64-apple-darwin.tar.gz"
      sha256 "0b59e0ec0ff4b8cd2ea27a8e898da3a181a76639663c815826d714e7e0e41858"
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
