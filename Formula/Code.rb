class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.139"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.139/code-aarch64-apple-darwin.tar.gz"
      sha256 "61daf1753e70d648f8974d83b6e6cb918cfbf8afd1a7c951d15831032dda6c56"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.139/code-x86_64-apple-darwin.tar.gz"
      sha256 "da09ccd630bebb3014e28ec8b76128c714322372a5a022d5115bd0c874e065f2"
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
