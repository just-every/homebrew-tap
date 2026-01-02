class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.29"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.29/code-aarch64-apple-darwin.tar.gz"
      sha256 "539f3d7f99334bda2cb5640c0d359d8a90e75905d659d6a27d0a6bc1ef9c2fb4"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.29/code-x86_64-apple-darwin.tar.gz"
      sha256 "04003906118d7992d5a7eb35e39144edccdef767c0b226784effd4d6aec59d46"
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
