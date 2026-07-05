class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.139"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.139/code-aarch64-apple-darwin.tar.gz"
      sha256 "d693350f9b03f096597021ab42621431feb4232355d1c92c050164c00f4318ac"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.139/code-x86_64-apple-darwin.tar.gz"
      sha256 "299276af2c89a95860404642642c4dde8785f93e042de32557488ae90201b328"
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
