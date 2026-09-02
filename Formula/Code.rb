class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.178"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.178/code-aarch64-apple-darwin.tar.gz"
      sha256 "67b76ea6769a8791dbd672e240a4243363d6d36682d5db84724fab02ae8848d8"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.178/code-x86_64-apple-darwin.tar.gz"
      sha256 "247d6e04ff044f6e316348101e6423b33619372d59ecbce9457d0b60bec79e72"
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
