class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.148"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.148/code-aarch64-apple-darwin.tar.gz"
      sha256 "e472fa249c76c4fb233f4173bba3f598cb5b49e3cbdbc80bddf8930d9048dfca"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.148/code-x86_64-apple-darwin.tar.gz"
      sha256 "2872fa5c8f73e22854ba57a4ca6758aba04ab47397c6e7efa6214a7390eb6ef7"
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
