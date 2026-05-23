class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.99"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.99/code-aarch64-apple-darwin.tar.gz"
      sha256 "163092b3f4a62986266be6ea8cb490aee9a6c2575f7c2d56cce8e1df5d3d6f9d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.99/code-x86_64-apple-darwin.tar.gz"
      sha256 "198f4b55c6f0b430e8a29fa7e91ada891da5225e3092cb0b1c763606fa6affad"
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
