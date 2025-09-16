class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.151"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.151/code-aarch64-apple-darwin.tar.gz"
      sha256 "29deee0b3c6085b1140337ad00bd7b08a9a469fe2abfbce2557065a543905f45"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.151/code-x86_64-apple-darwin.tar.gz"
      sha256 "9776aeab455deecd69c53b2721c2d39374ca02f5aba04bf635aa223c889e4a0c"
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
