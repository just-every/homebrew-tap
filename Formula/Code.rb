class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.176"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.176/code-aarch64-apple-darwin.tar.gz"
      sha256 "87fed0800015d4fdb3fd1fbc9008e9884c8fd7516248c1a53b2be5974a830a53"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.176/code-x86_64-apple-darwin.tar.gz"
      sha256 "96f6736785bce0871844fac902b21d6b7186cefa6da1d09acb0f7b9be7617d2d"
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
