class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.164"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.164/code-aarch64-apple-darwin.tar.gz"
      sha256 "52c56164782d530b87c0074a625e5052e1f8e61b2576d7f24eaadfe6f9302822"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.164/code-x86_64-apple-darwin.tar.gz"
      sha256 "238f4743f6a997e501c89d5cf291f469b03bd14a4e7b7b597c3925eff826b0b1"
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
