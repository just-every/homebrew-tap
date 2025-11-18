class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.20"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.20/code-aarch64-apple-darwin.tar.gz"
      sha256 "2de6f6706796fba3e95121ed45dc80e3dd507e200c56f83abf4169348e9e1699"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.20/code-x86_64-apple-darwin.tar.gz"
      sha256 "3b58d39b6a2d7d790e34e4e1829a9c8f2fa420d93caf6d3a2da2c816cc5acdf0"
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
