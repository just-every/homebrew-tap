class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.150"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.150/code-aarch64-apple-darwin.tar.gz"
      sha256 "b43d59ded8893a56c3a4316f68772100ada2ea574738b5162b1f5245533a5bfd"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.150/code-x86_64-apple-darwin.tar.gz"
      sha256 "0fdf1ef2c015e783a3a133b11c46bcc0d098ec4478962148fa2143627edfb5d1"
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
