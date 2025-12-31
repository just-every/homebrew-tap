class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.22"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.22/code-aarch64-apple-darwin.tar.gz"
      sha256 "d21fa484f5de14ae3982a86f595e1575fbc239c4e2facb0cf88e9775fef00102"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.22/code-x86_64-apple-darwin.tar.gz"
      sha256 "5275576628aa3558bfd895db6806791e23f8c654f1f9cd045d6134d7043b5f3f"
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
