class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.175"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.175/code-aarch64-apple-darwin.tar.gz"
      sha256 "1fa4a2b1422fcf69004236fa7c0293b997b804986ad0d780839f38df8e366fcf"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.175/code-x86_64-apple-darwin.tar.gz"
      sha256 "18cd219b627a6dd380235c85ebd42eb200d8994b08c407f4cb9b0653620dfea0"
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
