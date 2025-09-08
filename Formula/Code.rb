class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.90"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.90/code-aarch64-apple-darwin.tar.gz"
      sha256 "ebf8657437b1c4992adffb2d2e44a384ab759b9c2bba6413e1e84fa11efb0bc3"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.90/code-x86_64-apple-darwin.tar.gz"
      sha256 "01fde3d7e38c3146f8d09ee77bf3bc9b63d95518d30f050e2860374aaad29d18"
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
