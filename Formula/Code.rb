class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.93"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.93/code-aarch64-apple-darwin.tar.gz"
      sha256 "47efe7d4f8f9addc5f785200c467abfa02217becc4f932851bc9ae9942808c6b"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.93/code-x86_64-apple-darwin.tar.gz"
      sha256 "d6bf957f4b5cec64e4f3fc0dd356d941cb441e620419f5a300745912a4740a16"
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
