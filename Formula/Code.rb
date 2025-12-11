class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-aarch64-apple-darwin.tar.gz"
      sha256 "b526777711af5108c021b7762cf123f6efb9cd5e8ffad3935514369e159cbaed"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.1/code-x86_64-apple-darwin.tar.gz"
      sha256 "28261c5ad4eb736553a490a3eadbe0e0a8aa6ac370092507661d16d9a3e21066"
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
