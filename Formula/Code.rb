class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.21"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.21/code-aarch64-apple-darwin.tar.gz"
      sha256 "c472552b866c95937b99d960427324ad9fbadbcf20632844669bae46cc2f5e56"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.21/code-x86_64-apple-darwin.tar.gz"
      sha256 "023caa50f8c0de4d778499a21cc13543a29b13f19ac9ec83d0bcd8d8ba9b70bc"
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
