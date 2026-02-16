class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.70"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.70/code-aarch64-apple-darwin.tar.gz"
      sha256 "59105555baaba730f5613a62fd21b21a057b8ba773e6de375f5b0533fc0f716c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.70/code-x86_64-apple-darwin.tar.gz"
      sha256 "e72e0edbdb306b92c3bd93553df2cf2f5a8a5a2cf8e4ad0455f057bc318e0075"
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
