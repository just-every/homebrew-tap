class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.168"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.168/code-aarch64-apple-darwin.tar.gz"
      sha256 "48306bdeced342fb6dda2fd817b766d35175bbd750cf6fe73d462ad51a3b83a5"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.168/code-x86_64-apple-darwin.tar.gz"
      sha256 "c63eaec129e8f10ea55d91418849f1bda7934177f4506f666435128705cc60e4"
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
