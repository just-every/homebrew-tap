class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.101"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.101/code-aarch64-apple-darwin.tar.gz"
      sha256 "b49368e86df4848f6d14196865a918555ed904a42f9cf509cbbc290ea19536cc"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.101/code-x86_64-apple-darwin.tar.gz"
      sha256 "564b7881159c1afa31d21de2677df769784f552a018b77d5276974173368c246"
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
