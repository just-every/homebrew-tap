class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.14"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.14/code-aarch64-apple-darwin.tar.gz"
      sha256 "5030c5259f1e8ef28372b3c968f3299c6638a9d75c1f929321c7f4bf2c8eea85"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.14/code-x86_64-apple-darwin.tar.gz"
      sha256 "549284e29c2a269e4be9691384fc2e10bc465a72429225872dfb53629de27b63"
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
