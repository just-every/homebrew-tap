class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.80"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.80/code-aarch64-apple-darwin.tar.gz"
      sha256 "e420805b9c79d852c541202adc9846c51414a46c0bd2319285217884460f0533"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.80/code-x86_64-apple-darwin.tar.gz"
      sha256 "00c58daab577113718269b3c3cfdae595eb0264a3db9e3892aaed689d1f7281c"
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
