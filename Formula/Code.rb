class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.195"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.195/code-aarch64-apple-darwin.tar.gz"
      sha256 "5cf4b48db3ce125d7f95c170b90f5ae018f574f99219312420da64877c0196c1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.195/code-x86_64-apple-darwin.tar.gz"
      sha256 "d9a148af176fa96081d02462442311d144967a627a9179b9ecf3b4d047884462"
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
