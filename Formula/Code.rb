class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.126"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.126/code-aarch64-apple-darwin.tar.gz"
      sha256 "12d60977d3859a4c4138b005006232bef01d6e8469ad19b1592b23232113d69c"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.126/code-x86_64-apple-darwin.tar.gz"
      sha256 "8cd97f0f33c222c744a61301af0f5323b87a3050c9d3be59803a236651c9af60"
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
