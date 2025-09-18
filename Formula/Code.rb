class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.155"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.155/code-aarch64-apple-darwin.tar.gz"
      sha256 "c1aaeeb3667cf425eeb8dac3dae1c0e46c345c422b6eaf808f30cbd399870586"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.155/code-x86_64-apple-darwin.tar.gz"
      sha256 "e16d1814cc7d17be0c6f65a0a5374af2d18f319d3e85af5a26d13840e79e0b3f"
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
