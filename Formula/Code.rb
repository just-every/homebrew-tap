class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.88"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.88/code-aarch64-apple-darwin.tar.gz"
      sha256 "31e6925935979b685034656dc795dddb86bbb9f9cef78cd3afe0ee5aa9f158d6"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.88/code-x86_64-apple-darwin.tar.gz"
      sha256 "361a3b95bfa849a1dd68e75cdd3df6024e8042f78b0970a44cf4b696fe6ba569"
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
