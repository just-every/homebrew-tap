class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.107"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.107/code-aarch64-apple-darwin.tar.gz"
      sha256 "bd43a73db1eee30cc37db01364f30b495b40fc4ecce978539decb3dc8400833f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.107/code-x86_64-apple-darwin.tar.gz"
      sha256 "2696c1c8019b6fc6c6b074af11180814c4f031193c46f88013b7dc5893ff538c"
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
