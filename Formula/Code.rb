class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.105"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.105/code-aarch64-apple-darwin.tar.gz"
      sha256 "29b865c97fd88c86b3984833596a062e8aefae601467e0bc4944c3dbf88f69ec"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.105/code-x86_64-apple-darwin.tar.gz"
      sha256 "d7ac8bda4e50699cc31c8adfebcf9d48765790494207cebf6e840bcdc060ddfd"
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
