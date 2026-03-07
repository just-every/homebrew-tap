class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.77"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.77/code-aarch64-apple-darwin.tar.gz"
      sha256 "53257a8b9f9360aaa9d8b1e3e8c0164f829d35558057262e0bc8903ef9de2b59"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.77/code-x86_64-apple-darwin.tar.gz"
      sha256 "ec5faf28467f174800163bad241023eb9ca8673eb7e01d0d99ffb38fea49277c"
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
