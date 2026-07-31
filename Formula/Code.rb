class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.161"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.161/code-aarch64-apple-darwin.tar.gz"
      sha256 "9c7351ca15bfb60cbef0343c34b8e27e036c4e63e965f374f15e6e0a9471b6e9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.161/code-x86_64-apple-darwin.tar.gz"
      sha256 "ee3721f0d37ad0cdcd86c3e7620fec8f96f7667f81128883c47ccfa857176876"
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
