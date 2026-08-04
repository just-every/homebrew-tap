class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.168"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.168/code-aarch64-apple-darwin.tar.gz"
      sha256 "da8624403561f542a3d1011b8b1e9e3f1d8408febf349a58c47440652c128a12"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.168/code-x86_64-apple-darwin.tar.gz"
      sha256 "4ceb5cbfb644c3202c7c8b29f0a55a76418c6b0b4bbed7087b005e63eaed7bbf"
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
