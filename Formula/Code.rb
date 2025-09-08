class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.86"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.86/code-aarch64-apple-darwin.tar.gz"
      sha256 "01670b466fc7ed45bd84d47d9257d679c29d27683d82c4c1656b23e31f066b74"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.86/code-x86_64-apple-darwin.tar.gz"
      sha256 "60fd7c0eb9734bceb33eba503b1926742bdb4f64fea4924c9b2c2905ec2018b1"
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
