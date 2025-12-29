class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.19"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.19/code-aarch64-apple-darwin.tar.gz"
      sha256 "9c18c30b2defafe66dc4e26165ea2717246e7e8f7222218bbda45410751f3147"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.19/code-x86_64-apple-darwin.tar.gz"
      sha256 "997d64bc4c5e069f3621ed7ae49dcc4893f0a75523871d3cbcf6fbd402de8d4b"
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
