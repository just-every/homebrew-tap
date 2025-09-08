class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.95"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.95/code-aarch64-apple-darwin.tar.gz"
      sha256 "9de9cdfceff7a5a16785e59eaa8cd126cedb0cccfe939f2c96e6a355bfd1c576"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.95/code-x86_64-apple-darwin.tar.gz"
      sha256 "a6fce62e5472aec37e73e13e987835e30ea8ec234d7570ea0a84b939655c71e9"
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
