class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.114"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.114/code-aarch64-apple-darwin.tar.gz"
      sha256 "101ab11d3cd8d3fa0b27e5e50cc9286310c942d72a7d4553c2da291af00bcb53"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.114/code-x86_64-apple-darwin.tar.gz"
      sha256 "bbc4adf451bc4d5497e4bb71620dff4e285e2b950f8e0cd85c52bc9e0bef19ff"
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
