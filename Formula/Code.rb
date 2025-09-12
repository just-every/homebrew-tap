class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.131"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.131/code-aarch64-apple-darwin.tar.gz"
      sha256 "9957e689e3b85754218f3105f1f027f6d922df6f82fce6819443fcd8f918e80e"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.131/code-x86_64-apple-darwin.tar.gz"
      sha256 "8640c39cc95fd60572d89ae373f7b01c1f07515a86644f2e19a683e18b3e624a"
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
