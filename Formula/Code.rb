class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.66"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.66/code-aarch64-apple-darwin.tar.gz"
      sha256 "f6d2373fff4cd584017ef53de358a067f8b291e74fe28528a7a103758fb6fde1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.66/code-x86_64-apple-darwin.tar.gz"
      sha256 "31a40f9919071681e103a1452ce80eff1d7290c166d036cd7ea2c57d5eb7da65"
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
