class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.150"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.150/code-aarch64-apple-darwin.tar.gz"
      sha256 "21ed0d900099e961ed007703e07836363482f9b5dd575a093d8d8d7b331611e5"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.150/code-x86_64-apple-darwin.tar.gz"
      sha256 "3c3675252128c8db9531f5b43e1c98887ac0e4d3e8d73758d3dbae4e661dc8d2"
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
