class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.24"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.24/code-aarch64-apple-darwin.tar.gz"
      sha256 "7e741b98b70b88d12c156c9369dc7dfb01d9087b60f45e514dbb98f70584287c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.24/code-x86_64-apple-darwin.tar.gz"
      sha256 "041f2c7b93b8f1864502c4f50684c9d755a914f09a237e2cfa35883e8fe8bee7"
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
