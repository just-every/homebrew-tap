class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.147"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.147/code-aarch64-apple-darwin.tar.gz"
      sha256 "c8d519cb2d007bf0cd50accebcdc3d130ef416c71b4ab751a905db25ca1fc51c"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.147/code-x86_64-apple-darwin.tar.gz"
      sha256 "e2a3f5daa336d678884482cc1ba4da3791e5d2b2575ba6a586c4e63732c88b7f"
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
