class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.122"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.122/code-aarch64-apple-darwin.tar.gz"
      sha256 "fc989736e7ae2c0d41092e7cec4f9658853d4a97848f1e81e9f1b80da3f4f1e8"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.122/code-x86_64-apple-darwin.tar.gz"
      sha256 "2153315a375bea1ebc8481e0e8dc91d5f18101aa2e20b16d148e381548b34634"
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
