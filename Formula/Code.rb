class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.100"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.100/code-aarch64-apple-darwin.tar.gz"
      sha256 "8b6876706877e751bf1362fd676b9a5604ac39bcf798707d8b83bc5c9942dde7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.100/code-x86_64-apple-darwin.tar.gz"
      sha256 "4e9b0cd85719a159a69c6191b66c609e04edfc09418f1510c14a0b05c277203e"
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
