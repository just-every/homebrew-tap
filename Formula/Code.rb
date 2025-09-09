class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.105"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.105/code-aarch64-apple-darwin.tar.gz"
      sha256 "d5e84d1ef85fbb6dd4847829af5a0ccae649d0f1cb7dbdfe236a536616c15a0f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.105/code-x86_64-apple-darwin.tar.gz"
      sha256 "6edcb40754a1e7942fc9be220a9105d5e18fde0f04f6f67dc812c3673abfc1d6"
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
