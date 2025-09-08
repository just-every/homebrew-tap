class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.92"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.92/code-aarch64-apple-darwin.tar.gz"
      sha256 "504d8a268cbc0781b3c9e0c5a24f98983ed3fe67289861b2bc7db2f417bea0ef"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.92/code-x86_64-apple-darwin.tar.gz"
      sha256 "978913f5d3154f6eb826b88960b32cbae765f14bde9f16b9ef6598c5c654712e"
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
