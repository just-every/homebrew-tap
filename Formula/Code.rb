class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.103"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.103/code-aarch64-apple-darwin.tar.gz"
      sha256 "57ad739bcf27c58900a4da54bd0a62e4f4f547629d1fc375291c711e00764045"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.103/code-x86_64-apple-darwin.tar.gz"
      sha256 "eeb112e505ba758b24c5fbf6d5324d2d59887e150cb6f4921dbae42fb703dc46"
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
