class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.61"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.61/code-aarch64-apple-darwin.tar.gz"
      sha256 "da536fb441d933c740bfdb7a39537b1c969f03c075692106d1dffd6319d7880c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.61/code-x86_64-apple-darwin.tar.gz"
      sha256 "371381dac32699159d298f57ec6b1590982ed082842d240a534afb4d81cc8441"
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
