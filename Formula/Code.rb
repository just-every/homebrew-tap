class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.14"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.14/code-aarch64-apple-darwin.tar.gz"
      sha256 "14d642ece624affc2c4a876aa06c5e24e55990731de960292869896a6f9a8479"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.14/code-x86_64-apple-darwin.tar.gz"
      sha256 "888597745d7ad9acc31946c6987f55b72b53e3020b8b13d89839b5b2bfd6d5e0"
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
