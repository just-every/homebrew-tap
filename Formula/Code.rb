class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.166"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.166/code-aarch64-apple-darwin.tar.gz"
      sha256 "671f3de7f3ce7632a6ac645b3f20aab77257130ebf813e1b3d806a1dbae6288d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.166/code-x86_64-apple-darwin.tar.gz"
      sha256 "a52c8158b739622ca108aefaa56fed5e747729c7e1eaf1921cda328137baf595"
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
