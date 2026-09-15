class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.189"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.189/code-aarch64-apple-darwin.tar.gz"
      sha256 "6c6e95599df60d0ed111c22086a198db083620eccee9cb01249f2bd52b95b7b4"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.189/code-x86_64-apple-darwin.tar.gz"
      sha256 "d3fa15012b1ae7620c93b2bb98c0555dfc5628cbdd93df820a9936049ae888ac"
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
