class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.76"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.76/code-aarch64-apple-darwin.tar.gz"
      sha256 "252b16bcf21471376138d74995f3fa61ff1e1a8fba185648c5f413e40018341c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.76/code-x86_64-apple-darwin.tar.gz"
      sha256 "fb423598beec0b4a04d0e023a161b2fb47d145c8a6be37b94c8bfadb45c0ae9a"
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
