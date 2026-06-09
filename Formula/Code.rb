class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.110"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.110/code-aarch64-apple-darwin.tar.gz"
      sha256 "1ddeabb926b7df1f5c01ce8f187eb2e649f2c51756667a09f843a29b4eca8c63"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.110/code-x86_64-apple-darwin.tar.gz"
      sha256 "59665221f3d0a30c3a2ccbf7e04c7f058a3307e9cf43b8cd756fbb79210e46d0"
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
