class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.109"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.109/code-aarch64-apple-darwin.tar.gz"
      sha256 "b1ef959705141ee2d5bbbe9ef93b326e69ab27e8b05b6e83098701bfd1075ee0"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.109/code-x86_64-apple-darwin.tar.gz"
      sha256 "f72504ddecd149d8eaa10ce9fddfcc1f1bbe1aff0fafe85e10755bb2fa2fa2df"
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
