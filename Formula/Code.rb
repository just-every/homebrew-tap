class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.84"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.84/code-aarch64-apple-darwin.tar.gz"
      sha256 "13c91fa782413df625dce6f6ca0fd5d424ef94da6addb6d93a62e2444dcdbf49"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.84/code-x86_64-apple-darwin.tar.gz"
      sha256 "1de9006c606c29cea0ae4360b80a227a9210e65e2458836c9d58d6e7c537453f"
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
