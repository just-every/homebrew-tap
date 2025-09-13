class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.144"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.144/code-aarch64-apple-darwin.tar.gz"
      sha256 "03c58040d0a2d19d820894b80eb986f3653786c980bd9722b14007137ef19d00"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.144/code-x86_64-apple-darwin.tar.gz"
      sha256 "28556cc1849a3a6c42727b27d27ee0604d45086b573fad4dceb04ae90d42876c"
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
