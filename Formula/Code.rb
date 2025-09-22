class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.161"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.161/code-aarch64-apple-darwin.tar.gz"
      sha256 "f8a24da401b2a145626e4d5f3c88c8abfa06a7e8c97859e157b7b5840551c344"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.161/code-x86_64-apple-darwin.tar.gz"
      sha256 "de14a01e85f96a0ec4e1bf5000a4290b8d04e7f8a91b7b9f9f6de21c3c6a4a61"
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
