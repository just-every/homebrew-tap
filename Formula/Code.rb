class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.165"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.165/code-aarch64-apple-darwin.tar.gz"
      sha256 "4a45ffc260746b715bf38612b986d6ca838211d7c8b8364625594859bedd2c59"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.165/code-x86_64-apple-darwin.tar.gz"
      sha256 "361f2e70d56fca9cad663059f376a4b58fc432e8e6b6b90f39f1995b50fef281"
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
