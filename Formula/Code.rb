class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.20"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.20/code-aarch64-apple-darwin.tar.gz"
      sha256 "655d02240f0a3d5b2dc21e8f5b07cabd04d3d51746f709d72805cab7dc497917"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.20/code-x86_64-apple-darwin.tar.gz"
      sha256 "ad4871871e8644749f072a60edbccc06b54220de4160870d857a2f8f04ed294c"
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
