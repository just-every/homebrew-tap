class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.196"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.196/code-aarch64-apple-darwin.tar.gz"
      sha256 "b0a867e61ef1e3e3b697642c55ecc73a4234948c3f9f3733674d812fded22319"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.196/code-x86_64-apple-darwin.tar.gz"
      sha256 "f12ca5a0dc3ee66b2110e2a5285cd5a109ae8d046e8fc88dc9d4124d47133157"
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
