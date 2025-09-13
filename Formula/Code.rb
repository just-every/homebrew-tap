class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.145"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.145/code-aarch64-apple-darwin.tar.gz"
      sha256 "0e904e77cda7a021813ab93416fdce5f99552c09f03b2a31a38fd0b1b439f8fe"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.145/code-x86_64-apple-darwin.tar.gz"
      sha256 "e95212185cfd191c2f712b00a1ca698b5da9eb5b15fc54350657d299dbb52967"
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
