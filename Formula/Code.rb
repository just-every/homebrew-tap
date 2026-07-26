class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.154"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.154/code-aarch64-apple-darwin.tar.gz"
      sha256 "5b260ed60e54d7192abc58a1eb82b9ce4bd760520cd697333532a5dfbb03ef7f"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.154/code-x86_64-apple-darwin.tar.gz"
      sha256 "f7177e0c10aa8af05394c534eb52f2c0dc0d7dd0ffcf6bc8e27c09396ccc8835"
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
