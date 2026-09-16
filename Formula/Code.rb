class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.191"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.191/code-aarch64-apple-darwin.tar.gz"
      sha256 "d1111db515bf1bb91a98d2c9c01eab6540e46259da735c5cad06b52f6435facf"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.191/code-x86_64-apple-darwin.tar.gz"
      sha256 "ce1bbd66b574e14fb5197d5b9d668ed7fb19bf2057400edf98d2367cfb2f2552"
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
