class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.143"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.143/code-aarch64-apple-darwin.tar.gz"
      sha256 "ae7f73abb42ff61f933e5e2a5d2bfaa6fe99582ef66a19ecd568d0cfb959feb1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.143/code-x86_64-apple-darwin.tar.gz"
      sha256 "3ae0672bb3f588a85c9a706ee43f4f7f8b1aca5ff01eab9fcc0dfd15fb14aa58"
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
