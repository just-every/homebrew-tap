class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.137"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.137/code-aarch64-apple-darwin.tar.gz"
      sha256 "dbced19b3dda3a6a64683f0a23b5c2a24ceb557637ce1c52647cfb27d5d927f7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.137/code-x86_64-apple-darwin.tar.gz"
      sha256 "5e916fb8f67cb7590dbe16dfce386d66803fce1880e4a14c8734ca57079d28fb"
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
