class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.132"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.132/code-aarch64-apple-darwin.tar.gz"
      sha256 "581b133a2f823ab99c1fe2624a182b60ab087c03d3fdc13ff1b31eef1495030c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.132/code-x86_64-apple-darwin.tar.gz"
      sha256 "505646d8c265345018cf9256e6385786fcdbdd5e65dd02b08b0a2f0f4ee5e27d"
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
