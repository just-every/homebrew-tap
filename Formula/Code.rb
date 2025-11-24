class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.4"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.4/code-aarch64-apple-darwin.tar.gz"
      sha256 "eb3bc1394231529182eba47cddc53b77acdc0aa8f899fbc8ced3195e941946c4"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.4/code-x86_64-apple-darwin.tar.gz"
      sha256 "ebcb51fe5a5f4737d7c4aa7dec039d34c434d59b2b8833194ed991a0854396ed"
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
