class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.19"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.19/code-aarch64-apple-darwin.tar.gz"
      sha256 "0f0d3ba2ec44252c03641f08f4853b41ccc47af9662b8e2378231688d119ddb5"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.19/code-x86_64-apple-darwin.tar.gz"
      sha256 "fbea2039b50e7bd8478c9de2e79d608b327efa9bf309c27de9a1b044c87c4d9b"
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
