class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.115"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.115/code-aarch64-apple-darwin.tar.gz"
      sha256 "78df309e799643c595c445207dc121400de080e2c101fa7b5e96db4df512b98d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.115/code-x86_64-apple-darwin.tar.gz"
      sha256 "0c36ef4911efad49124832e78bdcbff3ffa675bd8a28f564224b4612557c729e"
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
