class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.160"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.160/code-aarch64-apple-darwin.tar.gz"
      sha256 "2b40eb94fae8a51c44fd0e2866309d2cdaef9c298b08e8418adb469382dbd653"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.160/code-x86_64-apple-darwin.tar.gz"
      sha256 "e2537fc4cd5a7cc4686dc27f405270f2116027de9076b6a2bfb12bb52de5a394"
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
