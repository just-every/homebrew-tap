class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.102"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.102/code-aarch64-apple-darwin.tar.gz"
      sha256 "15cd02bf4309b530edfc5b7b191c35f4e0f4862482e0befed3a343dfa54cda17"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.102/code-x86_64-apple-darwin.tar.gz"
      sha256 "e3337ed9569bd1af4ae90298cd23616400f1e91a07cd8ae48481c7f5de94bd90"
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
