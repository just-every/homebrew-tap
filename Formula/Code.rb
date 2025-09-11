class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.118"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.118/code-aarch64-apple-darwin.tar.gz"
      sha256 "818c4d680e6b3e171c3c03d67ac33e310b366778aadefd6880d6fcb91cafe2bf"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.118/code-x86_64-apple-darwin.tar.gz"
      sha256 "6e1d02161576341772a77bbb0148289861a01f0bc2006d00520d0c2c961084f0"
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
