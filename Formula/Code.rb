class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.152"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.152/code-aarch64-apple-darwin.tar.gz"
      sha256 "aa5a797a2894d3da7ae46da03ca50bd353116a370797869d13d81d23d6218bdb"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.152/code-x86_64-apple-darwin.tar.gz"
      sha256 "29e28eaab3446f80b5fcaa8ff7bbbe1e062233c58a0cedccf8933198ccb8db73"
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
