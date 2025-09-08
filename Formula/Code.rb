class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.91"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.91/code-aarch64-apple-darwin.tar.gz"
      sha256 "64a808d1321515cb891ff90df0a4bc1cbaa8d66e58cd0ae0caae82c15de44efc"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.91/code-x86_64-apple-darwin.tar.gz"
      sha256 "d6284e3975556fed8a5d44a97aea7b02591f0b73418c2815cc4db49bf5584ee5"
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
