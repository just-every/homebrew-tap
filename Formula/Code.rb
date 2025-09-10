class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.116"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.116/code-aarch64-apple-darwin.tar.gz"
      sha256 "2e945a0cb244407c04f3f4ea4e613d6f2eb6ff99aa119ee2d2a5145514d01fe7"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.116/code-x86_64-apple-darwin.tar.gz"
      sha256 "759e67ffa03f85a53e491891093afca287d9a78ad7890d2e472b6d0a568f9530"
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
