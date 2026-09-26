class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.193"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.193/code-aarch64-apple-darwin.tar.gz"
      sha256 "afa3f6a360271a1a6cfde7706a210ebe3b7fdbb7b606ebf560d78ba5d5de1bb2"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.193/code-x86_64-apple-darwin.tar.gz"
      sha256 "62dbf29ba56aa26d93be5669434349ec1994154ddc12ea4d639dc5fca7ef1675"
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
