class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.56"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.56/code-aarch64-apple-darwin.tar.gz"
      sha256 "786591db68f4b6257890ffd1a5da23281299fc246554194e8a1a14b83fe51c1d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.56/code-x86_64-apple-darwin.tar.gz"
      sha256 "165837c7d76b763f037393a5856d11a0349e97432a5154ca6ff9f7db2e547509"
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
