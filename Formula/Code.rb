class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-aarch64-apple-darwin.tar.gz"
      sha256 "4d9a1d032ec4d84af442663e70eca3371536352babd0bb31b1168330557772f7"
    else
      url "https://github.com/just-every/code/releases/download/v0.0.0/code-x86_64-apple-darwin.tar.gz"
      sha256 "e6fe3465b96b5bb7bc0108fcb86d564ed360416f2a5ef887eeb29ac6105321bc"
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
