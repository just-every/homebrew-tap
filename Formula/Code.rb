class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.75"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.75/code-aarch64-apple-darwin.tar.gz"
      sha256 "169bdf5b96f9e712b3d3356d3e88d7ff696f3658bda85c40f7620bc83b9b858d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.75/code-x86_64-apple-darwin.tar.gz"
      sha256 "8309f0eba363a587f37b6750e178f538637e5d89c6089b11579bb20b73e5d0f6"
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
