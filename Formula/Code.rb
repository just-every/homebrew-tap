class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.88"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.88/code-aarch64-apple-darwin.tar.gz"
      sha256 "53e369162773504ee1042e26429c390519f5cc0217e11d0a9863cbf99f649d59"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.88/code-x86_64-apple-darwin.tar.gz"
      sha256 "2b48e48fac6d7987e036bc23246229e09f3641ee7619977720d916d4ab4fe70d"
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
