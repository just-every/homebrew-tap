class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.15"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.15/code-aarch64-apple-darwin.tar.gz"
      sha256 "7726224a8bc1ab0277f0885013ff7b73ef1969b7cbc51349be67478f5157dc40"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.15/code-x86_64-apple-darwin.tar.gz"
      sha256 "ff9bc5ddf975f5f280ae222a05a4099a61be20e091a1a7451ee160edb9581a8e"
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
