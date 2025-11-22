class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.2"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.2/code-aarch64-apple-darwin.tar.gz"
      sha256 "7f450978758a39d8b00f1916f1cb9375c3d1bb57049440152923520dca506885"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.2/code-x86_64-apple-darwin.tar.gz"
      sha256 "42a63b98614724edd0f2d07feb7af92feb68916789715216f97900f9e5ae7d3c"
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
