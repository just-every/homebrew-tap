class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.125"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.125/code-aarch64-apple-darwin.tar.gz"
      sha256 "6b10cb1e301e28414ac142637b149c6b60bc939dbf9a32015b417aa4f082fe71"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.125/code-x86_64-apple-darwin.tar.gz"
      sha256 "61b5fa17e10b22b4a9762c05db0a50cc890b11281a60bdb07a2d8017b8bbea22"
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
