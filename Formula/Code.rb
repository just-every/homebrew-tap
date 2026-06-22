class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.129"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.129/code-aarch64-apple-darwin.tar.gz"
      sha256 "a36fdd630ef4077b5f2712ac1ee355e98fcab85f1a97e4e164cca811aa8dea44"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.129/code-x86_64-apple-darwin.tar.gz"
      sha256 "6df5235bb8ee9e9e33c59ce517685bedfb901de5c3926c337deea340b9278dcd"
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
