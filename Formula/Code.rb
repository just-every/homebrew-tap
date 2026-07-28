class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.156"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.156/code-aarch64-apple-darwin.tar.gz"
      sha256 "1f440d0fc7a047f6486cc6d529879b8176832c8b4eacb34ca65c0622aafeb4d8"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.156/code-x86_64-apple-darwin.tar.gz"
      sha256 "af7b1e7aa5dc4713964601a436296678472289148cafa56bb7dbf9c76c2c20aa"
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
