class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.141"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.141/code-aarch64-apple-darwin.tar.gz"
      sha256 "3bde58b34c76806f514f18b0bfa646ee0f5be592252f235d87a37eeb555c9d8a"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.141/code-x86_64-apple-darwin.tar.gz"
      sha256 "99d0f59d76a8766a09abb13640e8f3310e4a43f1c25aeab159969d867f4e140b"
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
