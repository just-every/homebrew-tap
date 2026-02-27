class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.72"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.72/code-aarch64-apple-darwin.tar.gz"
      sha256 "77991b12b5708f14a645d34d3de1e69982b4801293d7d2b1de3a5f0eb542f41d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.72/code-x86_64-apple-darwin.tar.gz"
      sha256 "d0334a010f6f8a6021e02e1e482345a043f48f707852f438f1c62aab52ff54ef"
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
