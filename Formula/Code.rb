class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.11"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.11/code-aarch64-apple-darwin.tar.gz"
      sha256 "9db4646b390c07ad8feca0a0fc053c224c442b9397906a91d4bdf0e5fd2be836"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.11/code-x86_64-apple-darwin.tar.gz"
      sha256 "057b4b998147450f86305af129cfd9122d07439d0c02d3f8ab514431f43ce8fe"
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
