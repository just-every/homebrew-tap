class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.116"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.116/code-aarch64-apple-darwin.tar.gz"
      sha256 "78d4ef1fa1eaa59c009574681b89c9bfc5f53fed165fbda370166153f7736fa7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.116/code-x86_64-apple-darwin.tar.gz"
      sha256 "c61bdca9c6b6e63f6dbda48843907b0cd72f5eda0c3b383f4483bc27eba547bc"
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
