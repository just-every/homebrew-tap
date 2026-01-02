class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.28"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.28/code-aarch64-apple-darwin.tar.gz"
      sha256 "89c662446e788eb2473e13cd00445aad45efa078971de8d2f7fcc76852c51dd7"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.28/code-x86_64-apple-darwin.tar.gz"
      sha256 "914dce2f991c2c79c6bdca73bfdc7e59885bcd3c651060bb192be61c557ac840"
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
