class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.108"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.108/code-aarch64-apple-darwin.tar.gz"
      sha256 "7fb3b695b06a8fc72d28bd9aba4a2cfb842387f0cfe9a73d49aee7a5d6fa587c"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.108/code-x86_64-apple-darwin.tar.gz"
      sha256 "2f5f596e2b0862392a4c48dc84c41baa3904d9ed05cf2df683d11a35171211b0"
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
