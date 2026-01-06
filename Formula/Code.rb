class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.37"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.37/code-aarch64-apple-darwin.tar.gz"
      sha256 "c3aa42d3da07d21ca2529aab4a76eab1c055e15c0f1dd9a19e0d9d103bc3f342"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.37/code-x86_64-apple-darwin.tar.gz"
      sha256 "ca11687b03f62a2c5b64a93a9e7b54ffd97f755fc25c797171d5713c93742bd6"
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
