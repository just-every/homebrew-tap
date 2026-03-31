class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.90"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.90/code-aarch64-apple-darwin.tar.gz"
      sha256 "deab45a2bf6083a04330c27dc5f867d017a7c0a82d6d37514053b621984e4766"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.90/code-x86_64-apple-darwin.tar.gz"
      sha256 "809198532e50e7d7df8485d3af095e510a8251d532e549f16dcffd7a96b0e506"
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
