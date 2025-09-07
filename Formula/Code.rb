class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.82"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.82/code-aarch64-apple-darwin.tar.gz"
      sha256 "308f867ec352f5ac5e5afac4797a4bd50b9c2872cd1de5752716a928ea85070c"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.82/code-x86_64-apple-darwin.tar.gz"
      sha256 "e7e6e291292ce1932c8088117f87b1ed3872e5b09d816b27597c9f493025e133"
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
