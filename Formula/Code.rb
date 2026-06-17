class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.121"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.121/code-aarch64-apple-darwin.tar.gz"
      sha256 "a370deb91f151b33c892c617ed5a65eb3cb11c2834ac2c6e7b2c9c68ef781851"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.121/code-x86_64-apple-darwin.tar.gz"
      sha256 "1d39c985da66b5cc098c61dbb51ca019c5ab5dc4225d03217aad2460544771af"
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
