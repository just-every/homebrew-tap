class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.177"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.177/code-aarch64-apple-darwin.tar.gz"
      sha256 "045838c2b1b8af6fed65a5525e144babbeba004eb2b87f4300bbfd2dc7cbc90a"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.177/code-x86_64-apple-darwin.tar.gz"
      sha256 "e4fa8a0c47bb04f6c02a7fd9ca3b91963daf677fd431cf47b91f997df8ca6c7f"
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
