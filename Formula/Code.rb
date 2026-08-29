class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.173"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.173/code-aarch64-apple-darwin.tar.gz"
      sha256 "1efa09ba02a3d9f72d2af04435dc6254b47e4d997e443f5c90aa4024e22a2b9d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.173/code-x86_64-apple-darwin.tar.gz"
      sha256 "2df29d98ef34c930ebdfcd97ce6638cd746df9787b7d68ce1a606cd354f6f5db"
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
