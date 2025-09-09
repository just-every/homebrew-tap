class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.106"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.106/code-aarch64-apple-darwin.tar.gz"
      sha256 "459f17361d4b1c3c5b2484d1fbc236f2f83dd1fe7d8c89a342ecbc2fd93dd9f8"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.106/code-x86_64-apple-darwin.tar.gz"
      sha256 "91df6706628d4f0c0188bff1b4082d15b39186c1468f12cff6c1769195da821e"
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
